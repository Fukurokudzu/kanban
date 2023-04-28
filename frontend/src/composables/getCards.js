import { ref } from 'vue'

const getCards = (path) => {
  const cards = ref([])
  const error = ref(null)
  
  const load = async() => {
    try {
      let data = await fetch(process.env.VUE_APP_API_SERVER + path)
      if (!data.ok) {
        throw Error('no data available')
      }
      cards.value = await data.json()
    }
    catch (err) {
      error.value = err.message
      console.log(error.value)
    }
  }

  return { cards, error, load }
}

export default getCards
