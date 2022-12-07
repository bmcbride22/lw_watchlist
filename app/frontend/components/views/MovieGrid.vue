<template>
  <ul role="list" class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
    <li :key="movie.url" class="col-span-1 flex flex-col divide-y divide-gray-200 rounded-lg bg-white text-center shadow">
      <div class="flex flex-1 flex-col p-8">
        <img class="mx-auto h-5 w-5" :src="movie.url" alt="" />
        <h3 class="mt-6 text-sm font-medium text-gray-900">{{ movie.title }}</h3>
      </div>
      <div>
        <div class="-mt-px flex divide-x divide-gray-200">
          <div class="flex w-0 flex-1">
            <a
              :href="`mailto: hello`"
              class="relative -mr-px inline-flex w-0 flex-1 items-center justify-center rounded-bl-lg border border-transparent py-4 text-sm font-medium text-gray-700 hover:text-gray-500"
            >
              <EnvelopeIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
              <span class="ml-3">Email</span>
            </a>
          </div>
          <div class="-ml-px flex w-0 flex-1">
            <a
              :href="`tel: 12345678`"
              class="relative inline-flex w-0 flex-1 items-center justify-center rounded-br-lg border border-transparent py-4 text-sm font-medium text-gray-700 hover:text-gray-500"
            >
              <PlusIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
              <span class="ml-3">Call</span>
            </a>
          </div>
        </div>
      </div>
    </li>
  </ul>
</template>

<script>
import { EnvelopeIcon, PlusIcon } from "@heroicons/vue/20/solid";
export default {
  props: ["movie"],
  components: {
    EnvelopeIcon,
    PlusIcon
  },
  data() {
    return {
      people: [
        {
          name: "Jane Cooper",
          title: "Paradigm Representative",
          role: "Admin",
          email: "janecooper@example.com",
          telephone: "+1-202-555-0170",
          imageUrl:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=4&w=256&h=256&q=60"
        }
      ]
    };
  },
  mounted() {
    console.log("Movie Grid Vue");
  }
};
</script>
