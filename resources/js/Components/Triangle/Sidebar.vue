<template>
    <div class="text-center sidebar bg-green-200 p-10">
        <div>
            <h2 class="text-2xl mb-5">Sidebar</h2>
            <ul class="list-none text-left">
                <li class="mb-10 select-none flex">
                    <svg @click="incrementCount" class="mr-2" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        viewBox="0 0 20 20">
                        <polygon points="10,0 20,20 0,20" fill="black" />
                    </svg>
                    Triangles Clicked: {{ count }}
                </li>
                <li class="mb-10 select-none flex">
                    <svg @click="colorChange" class="mr-2" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        viewBox="0 0 20 20">
                        <rect width="20" height="20" :fill="rectColor" />
                    </svg>
                    <!-- Make first character of rectColor uppercase -->
                    Most recent clicked color: {{ rectColor.charAt(0).toUpperCase() + rectColor.slice(1) }}
                </li>
                <!-- <li class="mb-10">Social Media Links</li> TODO: Add Links -->
            </ul>
        </div>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
    data() {
        return {
            count: 0,
            colors: [
                'red',
                'blue',
                'green',
                'yellow', 
                'purple', 
                'orange', 
                'pink', 
                'white', 
                'gray', 
                'cyan', 
                'magenta', 
                'lime', 
                'teal', 
                'indigo', 
                'violet', 
                'fuchsia', 
                'gold', 
                'silver', 
                'bronze'
            ],
            colorIndex: 0
        }
    },
    computed: {
        rectColor() {
            return this.colors[this.colorIndex];
        }
    },
    methods: {
        incrementCount() {
            this.count++
        },
        colorChange() {
            this.colorIndex = (this.colorIndex + 1) % this.colors.length;
        }
    }
})
</script>