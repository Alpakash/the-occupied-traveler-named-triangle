<script setup>
import 'vue-datepicker-next/index.css';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import CaseTitleHeader from '@/Components/AssignmentComponents/CaseTitleHeader.vue';
import DatePicker from 'vue-datepicker-next';
import roomDates from '../../../data/roomDates.json';
import { Head } from '@inertiajs/vue3';
import { ref, watch, computed } from 'vue';

const dates = ref(null);
const filteredRoomDates = ref([]);
const selectedRoomLocation = ref(null);

watch([dates, selectedRoomLocation], ([newDates, newRoomLocation]) => {
  const [startDate, endDate] = newDates;

  // Filter the roomDates based on the selected date range and room location
  filteredRoomDates.value = roomDates.roomDates
    .filter(room => !newRoomLocation || room.roomLocation === newRoomLocation)
    .map(room => {
      const filteredDates = room.dates.filter(dateObj => {
        const date = new Date(dateObj.date);
        return date >= startDate && date <= endDate;
      });
      return { ...room, dates: filteredDates };
    });
});

const firstBookedDates = computed(() => {
  const firstDates = {};
  for (const room of filteredRoomDates.value) {
    for (const dateObj of room.dates) {
      if (dateObj.booked && !firstDates[room.roomLocation]) {
        firstDates[room.roomLocation] = dateObj.date;
      }
    }
  }
  return firstDates;
});
</script>

<template>
  <Head title="Booking" />
  <AuthenticatedLayout bgColor='bg-red-300'>
    <CaseTitleHeader bgColor='bg-red-400' bgColorHover='bg-red-500'>
      <font-awesome-icon icon="calendar-check" /> Booking
    </CaseTitleHeader>
    <div class="mt-10">
      <div v-for="(room, index) in filteredRoomDates" :key="index"
        class="flex items-center justify-center mx-auto gap-4 mt-2 p-2 border border-gray-900 rounded-md w-11/12">
        <h3 class="flex-1">{{ room.roomLocation }}</h3>
        <div v-for="(dateObj, dateIndex) in room.dates" :key="dateIndex" class="flex-1">
          <p :class="{ 'text-green-800': dateObj.date === firstBookedDates[room.roomLocation] }">
            {{ dateObj.date }} - {{ dateObj.booked ? 'Booked' : 'Not booked' }}
          </p>
        </div>
      </div>
    </div>

    <div class="flex justify-center items-center gap-5 mt-10">
      <select v-model="selectedRoomLocation" class="border border-gray-300 rounded-md p-2 w-1/12">
        <option value="">All</option>
        <option v-for="(room, index) in roomDates.roomDates" :key="index" :value="room.roomLocation">
          {{ room.roomLocation }}
        </option>
      </select>
      <DatePicker v-model:value="dates" range />
    </div>
  </AuthenticatedLayout>
</template>
