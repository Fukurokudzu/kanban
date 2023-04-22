<template>
  <div class="home">
    <h1>Home</h1>
    <p>{{ users }}</p>
  </div>
</template>
<script>
import getUsers from '../composables/getUsers'

export default {
  name: 'Home',
  props: ['id'],
  setup() {
    const { users, error, load } = getUsers()    
    load()

    return { users, error }
  }
}
</script>
<style>
  
</style>
