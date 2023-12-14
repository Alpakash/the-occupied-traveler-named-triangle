<template>
    <div class="bg-green-200 p-10">
        <h1 class="text-3xl font-bold">The novel about traveler Triangle</h1>
        <p class="mt-5">In a world not unlike our own, there was an adventurer named Triangle. His journeys took him to the
            farthest corners of the world, and even to the mysterious Bermuda Triangle.</p>

        <div v-if="isSmallScreen">
            <div class="mt-5">
                <button @click="showMore = !showMore" class="text-blue-500 underline">Read More</button>
            </div>
            <div v-if="showMore">
                <p class="mt-5">He was greeted by a friendly old woman, the owner of the mansion. Triangle explained his
                    predicament,
                    and the woman, with a warm smile, told him that there was one room available. The room, though not
                    as luxurious as the ones in the inn, had a certain charm that made Triangle feel right at home.</p>

                <p class="mt-5">And so, Triangle's journey continued, each day bringing new experiences and discoveries. His
                    story
                    serves as a reminder that sometimes, the unexpected detours in our journey lead us to the most
                    wonderful places. It's not always about the destination, but the journey and the stories we gather
                    along the way. This tale of Triangle, the adventurous traveler, is a testament to the spirit of
                    exploration and the joy of discovery.</p>


                <p class="mt-5">One day, Triangle found himself in a quaint town. Tired, he sought shelter at the town's
                    inn, but
                    all
                    rooms were occupied. Undeterred, Triangle ventured into the town, his eyes scanning the streets for
                    a place to rest. His search led him to a grand old mansion at the edge of the town, now converted
                    into a bed and breakfast.</p>
            </div>
        </div>
        <div v-else>
            <p class="mt-5">One day, Triangle found himself in a quaint town. Tired, he sought shelter at the town's inn,
                but
                all
                rooms were occupied. Undeterred, Triangle ventured into the town, his eyes scanning the streets for
                a place to rest. His search led him to a grand old mansion at the edge of the town, now converted
                into a bed and breakfast.</p>

            <p class="mt-5">He was greeted by a friendly old woman, the owner of the mansion. Triangle explained his
                predicament,
                and the woman, with a warm smile, told him that there was one room available. The room, though not
                as luxurious as the ones in the inn, had a certain charm that made Triangle feel right at home.</p>

            <p class="mt-5">And so, Triangle's journey continued, each day bringing new experiences and discoveries. His
                story
                serves as a reminder that sometimes, the unexpected detours in our journey lead us to the most
                wonderful places. It's not always about the destination, but the journey and the stories we gather
                along the way. This tale of Triangle, the adventurous traveler, is a testament to the spirit of
                exploration and the joy of discovery.</p>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            isSmallScreen: false,
            showMore: false
        };
    },
    mounted() {
        this.checkScreenWidth();
        window.addEventListener('resize', this.checkScreenWidth);
    },
    beforeDestroy() {
        window.removeEventListener('resize', this.checkScreenWidth);
    },
    methods: {
        checkScreenWidth() {
            this.isSmallScreen = window.innerWidth < 768;
        }
    }
};
</script>
