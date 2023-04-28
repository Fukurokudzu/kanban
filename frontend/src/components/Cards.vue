<template>
  <li v-for="card in cards" :key="card.id">
      <div class="card-body">
        <div class="card-title">
          <h5>{{ card.title }}</h5>
        </div>
        <div class="card-text">
          {{ card.description }}
        </div>
      </div>
  </li>
</template>

<script>
export default {
props: ['cards'],
setup(props) {
  const cards = props.cards
  return { cards }
}
}
</script>

<style>

</style>
