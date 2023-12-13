<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head, usePage, Link } from '@inertiajs/vue3';
const user = usePage().props.auth.user;

</script>

<template>
    <Head title="Dashboard" />
    <AuthenticatedLayout>
        <template #footer>
            <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight select-none">Hello {{ user.name }}. Welcome to your <strong class="bg-purple-300 text-black">smiley</strong> dashboard! :)</h2>
        </template>
        <div class="grid grid-cols-2 justify-items-center mx-auto w-full lg:w-1/2 mt-32">
            <Link href='/dashboard'><div class="bg-purple-300 dashboard-statistics smile-hover">Smiles given...</div></Link>
            <Link href='/booking'><div class="bg-red-300 dashboard-statistics booking-hover">X Bookings made...</div></Link>
            <Link href='/triangle'><div class="bg-green-300 dashboard-statistics triangle-hover">Triangles clicked...</div></Link>
            <Link href='/travel'><div class="bg-yellow-300 dashboard-statistics travel-hover">KM's travelled...</div></Link>
        </div>
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