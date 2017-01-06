 @Posts = React.createClass
    getInitialState: ->
      posts: @props.data
    getDefaultProps: ->
      posts: []
    render: ->
      React.DOM.div
        className: 'posts'
        React.DOM.h2
          className: 'title'
          'Posts'
        React.DOM.table
          className: 'table table-bordered'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Title'
              React.DOM.th null, 'Description'
          React.DOM.tbody null,
            for post in @state.posts
              React.createElement Post, key: post.id, post: post
