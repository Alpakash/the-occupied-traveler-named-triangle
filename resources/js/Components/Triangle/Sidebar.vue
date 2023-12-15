<template>
  <div class="text-center sidebar bg-green-200 p-10">
    <div>
      <h2 class="text-2xl mb-5">Sidebar</h2>
      <ul class="list-none text-left">
        <li class="mb-10 select-none flex flex-wrap">
          <svg @click="incrementCount" class="mr-2" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
            viewBox="0 0 20 20">
            <polygon points="10,0 20,20 0,20" fill="black" />
          </svg>
          Triangles Clicked: <strong class="ml-2">{{ count }}</strong>
        </li>
        <li class="mb-10 select-none flex flex-wrap">
          <svg @click="colorChange" class="mr-2" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
            viewBox="0 0 20 20">
            <rect width="20" height="20" :fill="rectColor" />
          </svg>
          Previously clicked color: <strong class="ml-2">{{ previousColor }}</strong>
        </li>
        <button @click="resetCount">abc</button>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, computed } from 'vue';
import { useStore } from 'vuex';

export default defineComponent({
  setup() {
    const store = useStore();

    const count = computed(() => store.state.count);

    const incrementCount = () => {
      store.commit('incrementCount');
    };

    const resetCount = () => {
      store.commit('resetCount');
    }

    return { count, incrementCount, resetCount };
  },
  data() {
    return {
      colors: ['red', 'blue', 'green', 'yellow', 'purple'],
      colorIndex: 0,
      previousColor: 'none yet... click the colored square!'
    }
  },
  computed: {
    rectColor() {
      return this.colors[this.colorIndex];
    }
  },
  methods: {
    colorChange() {
      this.previousColor = this.rectColor;
      this.colorIndex = (this.colorIndex + 1) % this.colors.length;
    }
  }
})
</script>
