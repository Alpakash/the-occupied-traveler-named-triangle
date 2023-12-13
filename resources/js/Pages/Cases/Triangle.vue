<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import CaseTitleHeader from '@/Components/AssignmentComponents/CaseTitleHeader.vue';
import { Head } from '@inertiajs/vue3';
import StickyFooter from '@/Components/Triangle/StickyFooter.vue';
import MainContent from '@/Components/Triangle/MainContent.vue';
import Sidebar from '@/Components/Triangle/Sidebar.vue';
</script>

<template>
    <Head title="Triangle" />
    <AuthenticatedLayout bgColor='bg-green-300'>
        <div class="absolute right-0 top-0 w-[50vw] h-[100vh] bg-blue-800 z-0" style="clip-path: polygon(100% 0, 100% 100%, 0% 100%);"></div>
        <CaseTitleHeader bgColor='bg-green'>
            <font-awesome-icon icon="shapes" /> Triangle
        </CaseTitleHeader>
        <div class="flex mt-10 gap-8">
            <MainContent class="w-8/12 z-10" />
            <Sidebar class="w-4/12 z-10" />
        </div>
    <StickyFooter />
</AuthenticatedLayout>
</template>
