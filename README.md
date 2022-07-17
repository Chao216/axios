# this is a tutorial for Axios

make a GET request

```javascript
axios({
  method: "GET",
  url: "http://localhost:3000/posts/2",
}).then((res) => {
  console.log(res);
});
```

make a POST request

```javascript
axios({
  method: "POST",
  url: "http://localhost:3000/posts",
  data: {
    title: "Why is it so difficult to travel to China?",
    author: "Chao Jiang",
  },
}).then((res) => {
  console.log(res);
});
```

make a PUT request

```javascript
axios({
  method: "PUT",
  url: "http://localhost:3000/posts/3",
  data: {
    title: "Why is it so difficult to travel to China?",
    author: "Chao Jiang, and all other oversea Chinese",
  },
}).then((res) => {
  console.log(res);
});
```

make a PATCH request

```javascript
axios({
  method: "PATCH",
  url: "http://localhost:3000/posts/3",
  data: {
    title: "IS CHINA OPEN NOW?",
  },
}).then((res) => {
  console.log(res);
});
```

make a DELETE request

```javascript
axios({
  method: "DELETE",
  url: "http://localhost:3000/posts/3",
}).then((res) => {
  console.log(res);
});
```

axios config defaults

```javascript
axios.defaults.baseURL = "https://api.example.com";
axios.defaults.method = "GET";
axios.defaults.timeout = 2500;
```

Interceptors

```javascript
// Add a request interceptor
axios.interceptors.request.use(
  function (config) {
    // Do something before request is sent
    return config;
  },
  function (error) {
    // Do something with request error
    return Promise.reject(error);
  }
);

// Add a response interceptor
axios.interceptors.response.use(
  function (response) {
    // Any status code that lie within the range of 2xx cause this function to trigger
    // Do something with response data
    return response;
  },
  function (error) {
    // Any status codes that falls outside the range of 2xx cause this function to trigger
    // Do something with response error
    return Promise.reject(error);
  }
);
```

cancell a axios request

```javascript
const controller = new AbortController();

axios
  .get("/foo/bar", {
    signal: controller.signal,
  })
  .then(function (response) {
    //...
  });
// cancel the request
controller.abort();
```
