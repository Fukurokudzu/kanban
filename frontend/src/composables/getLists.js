import { ref } from 'vue'

const getLists = (path) => {
  const lists = ref([])
  const error = ref(null)
  
  const load = async() => {
    try {
      let data = await fetch(process.env.VUE_APP_API_SERVER + path)
      if (!data.ok) {
        throw Error('no data available')
      }
      lists.value = await data.json()
    }
    catch (err) {
      error.value = err.message
      console.log(error.value)
    }
  }

  return { lists, error, load }
}

export default getLists
