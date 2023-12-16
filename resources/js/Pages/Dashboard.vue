<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head, usePage, Link } from '@inertiajs/vue3';
const user = usePage().props.auth.user;

</script>

<template>
    <Head title="Dashboard" />
    <AuthenticatedLayout>
        <template #footer>
            <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight select-none">Hello {{ user.name
            }}. Welcome to your <strong class="bg-purple-300 text-black">smiley</strong> dashboard! :)</h2>
        </template>
        <div class="grid grid-cols-2 justify-items-center mx-auto w-full lg:w-1/2 mt-32">
            <Link href='/dashboard'>
            <div
                class="bg-purple-300 hover:bg-purple-400 dashboard-statistics smile-hover h-150 w-220 m-30 rounded-10 flex justify-center items-center text-20 font-bold">
                Smiles given...</div>
            </Link>
            <Link href='/booking'>
            <div
                class="bg-red-300 hover:bg-red-400 dashboard-statistics booking-hover h-150 w-220 m-30 rounded-10 flex justify-center items-center text-20 font-bold">
            X Bookings made...</div>
        </Link>
        <Link href='/triangle'>
        <div
            class="bg-green-300 hover:bg-green-400 dashboard-statistics triangle-hover h-150 w-220 m-30 rounded-10 flex justify-center items-center text-20 font-bold">
            Triangles clicked...</div>
        </Link>
        <Link href='/travel'>
        <div
            class="bg-yellow-300 hover:bg-yellow-400 dashboard-statistics travel-hover h-150 w-220 m-30 rounded-10 flex justify-center items-center text-20 font-bold">
            KM's travelled...</div>
        </Link>
    </div>
</AuthenticatedLayout></template>
