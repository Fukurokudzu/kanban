<template>
  <div class="project">
    <router-link :to="{ name: 'Details', params: { id: project.id }}">
      <h3>{{ project.title }}</h3>
    </router-link>
    <p>{{ snippet }}</p>
    <span v-for="tag in project.tags" :key="tag">
    #{{ tag }}</span>
  </div>
</template>

<script>
import { computed } from 'vue'

export default {
  props: ['project'],
  setup(props) {
    const snippet = computed(() => {
      return props.project.body.substring(0,100) + '...'
    })

    return { snippet }
  },
}
</script>

<style>
  
</style>
