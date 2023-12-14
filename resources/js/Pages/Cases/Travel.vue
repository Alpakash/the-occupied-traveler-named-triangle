<script setup lang="ts">
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import CaseTitleHeader from '@/Components/AssignmentComponents/CaseTitleHeader.vue';
import { Head } from '@inertiajs/vue3';
</script>

<template>
    <Head title="Travel" />
    <AuthenticatedLayout bgColor='bg-yellow-300'>
        <CaseTitleHeader bgColor='bg-yellow-400' bgColorHover='bg-yellow-500'>
            <font-awesome-icon icon="shapes" /> Travel 
        </CaseTitleHeader>
    </AuthenticatedLayout>
</template>
