function PostServices($resource) {

  this.posts = [{
    title: "this is a post from the controller",
    body: "This is a body from the controller"
  }, {
    title: "This is another from the controller",
    body: "Number 2 from the controller"
  }];

}

angular
  .module('app')
  .service('PostServices', PostServices);
