function PostServices($http) {

  this.posts = $http({
        method: 'GET',
        url: 'http://localhost:3000/posts.json'
    })
    .then(function (data) {
        console.log(data);
    });

debugger;
//     var posts = {
//   	getPost: function(){
//     	return $http({
//         	method: 'GET',
//         	url: 'http://localhost:3000/posts.json'
//     	})
//     	.then(function (r) {
//         	posts.post = r.data;
//         	console.log(posts.post);
//     	});
// 	};
// ​
// 	posts.getPost();
// ​
// 	return posts;


  // [{
  //   title: "this is a post from the controller",
  //   body: "This is a body from the controller"
  // }, {
  //   title: "This is another from the controller",
  //   body: "Number 2 from the controller"
  // }];

}

angular
  .module('app')
  .service('PostServices', PostServices);
