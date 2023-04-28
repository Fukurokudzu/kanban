<template>
  <div v-if="error">{{ error }}</div>
  <div class="list-header">
    <h3>{{ list.title }}</h3>
  </div>
  <div class="list-body">
    <ul class="cards">
      <Cards :cards="cards" />
    </ul>
  </div>
</template>

<script>

import getCards from '../composables/getCards'
import Cards from './Cards'

export default {
  props: ['list'],
  components: { Cards },
  setup(props) {
    const path = '/list' + '/' + props.list.id + '/card'
    const { cards, error, load } = getCards(path)
    load()
    return { cards, error }
  }
}
</script>

<style>
  
</style>
