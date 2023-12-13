<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import CaseTitleHeader from '@/Components/AssignmentComponents/CaseTitleHeader.vue';
import { Head } from '@inertiajs/vue3';

</script>

<template>
    <Head title="Booking" />
    <AuthenticatedLayout bgColor='bg-red-300'>
        <CaseTitleHeader bgColor='bg-red'>
            <font-awesome-icon icon="calendar-check" /> Booking 
        </CaseTitleHeader>
    </AuthenticatedLayout>
</template>
