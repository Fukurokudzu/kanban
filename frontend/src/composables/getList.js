import { ref } from 'vue'

const getList = (id) => {
  const list = ref([])
  const error = ref(null)
  
  const load = async() => {
    try {
      let data = await fetch(process.env.VUE_APP_API_SERVER + '/list/' + id)
      if (!data.ok) {
        throw Error('no data available')
      }
      list.value = await data.json()
    }
    catch (err) {
      error.value = err.message
      console.log(error.value)
    }
  }

  return { list, error, load }
}

export default getList
