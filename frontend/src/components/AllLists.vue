<template>
  <div v-if="error">{{ error }}</div>
  <div v-else>
    <div v-for="list in lists" :key="list.id" class="lists">
      <SingleList :list="list" />
    </div>
  </div>
</template>

<script>
import getLists from '../composables/getLists'
import SingleList from './SingleList'

export default {
  components: { SingleList },
  setup() {
    const path = '/list'
    const { lists, error, load } = getLists(path)
    load()
    return { lists, error }
  }
}
</script>
<style>
</style>
