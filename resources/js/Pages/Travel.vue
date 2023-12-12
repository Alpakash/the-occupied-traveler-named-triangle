<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head } from '@inertiajs/vue3';

</script>

<template>
    <Head title="Travel" />
    <AuthenticatedLayout bgColor='bg-yellow-300'>
       Travel
    </AuthenticatedLayout>
</template>

<style scoped>
.dashboard-statistics {
    height: 150px;
    min-width: 220px;
    margin: 30px;
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    font-weight: bold;
}

.smile-hover:hover {
    background-color: #9F7AEA;
}

.booking-hover:hover {
    background-color: #f47272;
}

.triangle-hover:hover {
    background-color: #61fa87;

}

.travel-hover:hover {
    background-color: #eec94e;

}
</style>