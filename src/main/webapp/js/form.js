//url for test = https://course-api.com/react-store-products ==> just in browser add link

let sighName
let sighPasword
const form2 = document.querySelector('.form2'),
  form = document.querySelector('.form')

const app = axios.create({
  baseURL: 'http://localhlost:5000',
  headers: {
    'Access-Control-Allow-Origin': '*',
    'Content-Type': 'application/json',
  },
  withCredentials: true,
})

///HTTP request
function performSignIn(url, obj) {
  let headers = new Headers()
  headers.append('Content-Type', 'application/json')
  headers.append('Accept', 'application/json')
  headers.append('Access-Control-Allow-Origin', 'http://localhost:3000')
  headers.append('Access-Control-Allow-Credentials', 'true')
  headers.append('GET', 'POST', 'OPTIONS')

  fetch(url, {
    mode: 'no-cors',
    credentials: 'include',
    method: 'POST',
    headers: headers,
    body: JSON.stringify(obj),
  })
    .then((response) => response.json())
    .then((json) => {
      return json
    })
    .catch((error) => console.log('Authorization failed : ' + error.message))
}


function get() {
  document.querySelector('.container').classList.toggle('active')
  document.querySelector('section').classList.toggle('active')
}

document.querySelector('.toggle').addEventListener('click', get)
document.querySelector('.sightIn').addEventListener('click', get)

form2.addEventListener('submit', async (e) => {
  e.preventDefault()
  let response = {}
  const sighRepeatPasword = document.querySelector('#sighRepeatPasword')
  sighName = form2.elements.sighName.value
  sighPasword = form2.elements.sighPasword.value
  const sighRepPasword = sighRepeatPasword.value
  if (
    sighName != '' &&
    sighPasword != '' &&
    sighPasword != null &&
    sighName != null
  ) {
    if (sighPasword === sighRepPasword) {
      console.log({ name: sighName, password: sighPasword })

      performSignIn('http://localhost:5000/api/registration', {
        name: sighName,
        password: sighPasword,
      })
      form2.reset()
      get()
    } else {
      console.log(`I'm sorry please check the Confirm Password`)
    }
  } else {
    console.log(`Nooo,try again`)
  }
  return response
})

form.addEventListener('submit', (e) => {
  e.preventDefault()
  const repeatName = document.querySelector('#repeatName')
  const repeatPassword = document.querySelector('#repeatPassword')

  let value = repeatName.value
  let value2 = repeatPassword.value

  performSignIn('http://localhost:5000/api/login', {
    name: value,
    password: value2,
  })
})
