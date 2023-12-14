<script setup lang="ts">
import ConfettiExplosion from "vue-confetti-explosion";
import { nextTick, ref } from "vue";

const visible = ref(false);

const explode = async () => {
    visible.value = false;
    await nextTick();
    visible.value = true;
};
</script>

<template>
    <div
        class="bottom-5 bg-gray-100 py-5 bg-orange-400 sticky w-11/12 mx-auto rounded-xl z-20 hover:bg-orange-100 duration-500">
        <div class="grid grid-cols-3 gap-4 justify-items-center">
            <!-- Column 1 -->
            <ul class="text-left">
                <h1 class="font-bold mb-2 text-xl italic">Contact</h1>
                <li><a href="https://github.com/Alpakash" class="font-normal hover:font-bold" target="_blank">Github</a>
                </li>
                <li><a href="https://www.linkedin.com/in/akashsoedamah/" class="font-normal hover:font-bold"
                        target="_blank">LinkedIn</a></li>
                <li><a href="https://www.akashsoedamah.com" class="font-normal hover:font-bold"
                        target="_blank">Portfolio</a></li>
            </ul>

            <!-- Column 2 -->
            <ul>
                <h1 class="font-bold mb-2 text-xl italic">Experience</h1>
                <li><a href="https://www.sogeti.nl/" class="font-normal hover:font-bold" target="_blank">Sogeti/ASML</a>
                </li>
                <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&pp=ygUJcmljayByb2xs"
                        class="font-normal hover:font-bold" target="_blank">Xiomatics</a></li>
                <li><a href="https://www.workspace365.net/" class="font-normal hover:font-bold"
                        target="_blank">Workspace365</a></li>
            </ul>
            <!-- Column 3 -->
            <ul>
                <h1 class="font-bold mb-2 text-xl italic">Skills</h1>
                <li @click="explode" class="font-normal hover:font-bold cursor-pointer" target="_blank">React</li>
                <li @click="explode" class="font-normal hover:font-bold cursor-pointer" target="_blank">TypeScript</li>
                <li @click="explode" class="font-normal hover:font-bold cursor-pointer" target="_blank">Bamboo CI/CD</li>
            </ul>
        </div>
    </div>
    <ConfettiExplosion v-if="visible" :particleCount="100" :force="0.5" :stageHeight="350" :stageWidth="3000"
        :particleSize="21" />
</template>