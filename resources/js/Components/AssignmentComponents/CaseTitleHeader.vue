<script setup lang="ts">
import { defineProps } from 'vue';
import { nextTick, ref } from "vue";
import ConfettiExplosion from "vue-confetti-explosion";

defineProps({
    bgColor: String
});

const visible = ref(false);

  const explode = async () => {
    visible.value = false;
    await nextTick();
    visible.value = true;
  };
</script>

<template class="overflow-visible">
    <h1 class="text-3xl">
        <div 
            @click="explode"
            v-motion-fade
            class="flex w-full gap-20 overflow-hidden justify-center mt-3 p-2 shadow-lg hover:shadow-xl hover:cursor-help" 
            :class="[`${bgColor}-400`, `hover:${bgColor}-500`]"
            :initial="{
                opacity: 0,
                y: -140,
            }"
            :enter="{
                opacity: 1,
                y: 0,
                transition: {
                    delay: 1000,
                    duration: 300,
                    type: 'keyframes',
                    ease: 'easeIn',
                },
            }"
        >
            <div class="w-1/8 flex-shrink-0 select-none" v-for="i in 8" :key="i">
                <slot />
            </div>
        </div>
    </h1>

    <ConfettiExplosion
        v-if="visible"
        :particleCount="150"
        :force="0.5"
        :stageHeight="800"
        :stageWidth="3600"
        :particleSize="21" 
    />
</template>