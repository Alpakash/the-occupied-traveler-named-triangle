<script setup lang="ts">
import { defineProps } from 'vue';
import { nextTick, ref } from "vue";
import ConfettiExplosion from "vue-confetti-explosion";

const visible = ref(false);

const explode = async () => {
    visible.value = false;
    await nextTick();
    visible.value = true;
};

const props = defineProps({
    bgColor: String,
    bgColorHover: String
});

let dynamicClass = ref(props.bgColor);

// Needed to add those two methods to make the dynamic CSS class work persistently
// instead of with :class bind and hover: classes
const handleMouseEnter = () => {
    dynamicClass.value = props.bgColorHover;
};

const handleMouseLeave = () => {
    dynamicClass.value = props.bgColor;
};
</script>

<template>
    <h1 class="text-3xl">
        <div 
        v-motion-fade
            @click="explode" 
            class="flex w-full gap-20 overflow-hidden justify-center mt-3 p-2 shadow-lg hover:shadow-xl hover:cursor-help"
            @mouseenter="handleMouseEnter" @mouseleave="handleMouseLeave" :class="dynamicClass" :initial="{
                opacity: 0,
                y: -140,
            }" 
            :enter="{
                opacity: 1,
                y: 0,
                transition: {
                    delay: 200,
                    duration: 1500,
                    type: 'keyframes',
                    ease: 'easeIn',
                },
            }">
            <div class="w-1/8 flex-shrink-0 select-none" v-for="i in 8" :key="i">
                <slot />
            </div>
        </div>
    </h1>

    <ConfettiExplosion v-if="visible" :particleCount="100" :force="0.5" :stageHeight="1000" :stageWidth="3200"
        :particleSize="21" />
</template>