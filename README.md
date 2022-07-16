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
