<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import CaseTitleHeader from '@/Components/AssignmentComponents/CaseTitleHeader.vue';
import StickyFooter from '@/Components/Triangle/StickyFooter.vue';
import MainContent from '@/Components/Triangle/MainContent.vue';
import Sidebar from '@/Components/Triangle/Sidebar.vue';
import { Head } from '@inertiajs/vue3';
import { useStore } from 'vuex';

const store = useStore();

const incrementCount = () => {
    store.commit('incrementCount');
};
</script>

<template>
    <Head title="Triangle" />
    <AuthenticatedLayout bgColor='bg-green-300'>
        <div @click="incrementCount" class="absolute right-0 top-0 w-[50%] h-[100%] bg-blue-800 z-0"
            style="clip-path: polygon(100% 0, 100% 100%, 0% 100%);"></div>
        <CaseTitleHeader bgColor='bg-green-400' bgColorHover='bg-green-500'>
            <font-awesome-icon @click="incrementCount" icon="shapes" /> Triangle
        </CaseTitleHeader>
        <div class="flex mt-10 gap-8">
            <MainContent class="w-8/12 z-10" />
            <Sidebar class="w-4/12 z-10" />
        </div>
        <div class="flex m-8 gap-5 justify-around">
            <img src="../../../../public/images/cat1.jpg" alt="Cat 1"
                class="z-20 object-contain h-50 w-40 transform transition duration-500 ease-in-out hover:scale-110">
            <img src="../../../../public/images/cat2.jpg" alt="Cat 2"
                class="z-20 object-contain h-50 w-40 transform transition duration-500 ease-in-out hover:scale-110 hover:rotate-45">
            <img src="../../../../public/images/cat3.jpg" alt="Cat 3"
                class="z-20 object-contain h-50 w-40 transform transition duration-500 ease-in-out hover:scale-110 hover:rotate-90">
            <img src="../../../../public/images/cat4.jpg" alt="Cat 3"
                class="z-20 object-contain h-50 w-40 transform transition duration-500 ease-in-out hover:scale-110 hover:rotate-180">
        </div>
        <StickyFooter />
    </AuthenticatedLayout>
</template>