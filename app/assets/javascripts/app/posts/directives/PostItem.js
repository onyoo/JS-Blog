function PostItem() {
	return {
		scope: {},
		template: [
			'<div>',
				'<label>Post:</label>',
				'{{ ctrl.title }}',
				'{{ ctrl.body }}',
			'</div>'
		].join(''),
		controller: function() {

		},
		controllerAs: 'ctrl',
		bindToController: {
			title: '=',
			body: '='
		},
		restrict: 'E'
	};
}

angular
	.module('app')
	.directive('postItem', PostItem);
