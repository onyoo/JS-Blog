function PostController(PostServices) {

  this.posts = PostServices.posts
}

angular
  .module('app')
  .controller('PostController', PostController);
