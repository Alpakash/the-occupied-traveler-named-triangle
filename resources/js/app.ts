import './bootstrap';
import '../css/app.css';

import { createApp, h, DefineComponent, App } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { ZiggyVue } from '../../vendor/tightenco/ziggy/dist/vue.m.js';
import { library } from '@fortawesome/fontawesome-svg-core'
import { faCalendarCheck, faTriangleCircleSquare, faShoePrints } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { MotionPlugin } from '@vueuse/motion'
import { createStore } from 'vuex';
import createPersistedState from 'vuex-persistedstate'
import axios from 'axios';

library.add(
  faCalendarCheck,
  faTriangleCircleSquare,
  faShoePrints
);

const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
  title: (title) => `${title} - ${appName}`,
  resolve: (name) => resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob<DefineComponent>('./Pages/**/*.vue')),
  setup({ el, App, props, plugin }) {
    const app = createApp({ render: () => h(App, props) })
      .use(plugin)
      .use(ZiggyVue, Ziggy)
    app.component('font-awesome-icon', FontAwesomeIcon);
    app.use(MotionPlugin)
    app.use(store)
    app.mount(el);
  },
  progress: {
    color: '#4B5563',
  },
});

// The Vuex store for managing application state.
const store = createStore({
  state: {
    count: 0
  },
  mutations: {
    incrementCount(state) {
      state.count++;
    },
    setCount(state, count) {
      state.count = count;
    },
    resetCount(state) {
      state.count = 0;
    }
  },
  actions: {
    async updateCount({ commit, state }) {
      try {
        commit('incrementCount');
        const response = await axios.post('/api/update-count', { updatedCount: state.count });
        commit('setCount', response.data.count);
      } catch (error) {
        console.error(error);
      }
    },
    fetchCount({ commit }) {
      axios.get('/api/count')
          .then(response => {
              commit('setCount', response.data.count);
          });
    }
  },
  plugins: [createPersistedState()],
});
