import { ref } from 'vue'

const getUser = (id) => {
  const user = ref([])
  const error = ref(null)
  
  const load = async() => {
    try {
      let data = await fetch(process.env.VUE_APP_API_SERVER + '/user/' + id)
      if (!data.ok) {
        throw Error('no data available')
      }
      user.value = await data.json()
    }
    catch (err) {
      error.value = err.message
      console.log(error.value)
    }
  }

  return { user, error, load }
}

export default getUser
