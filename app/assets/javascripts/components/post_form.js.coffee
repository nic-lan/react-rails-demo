@PostForm = React.createClass
    getInitialState: ->
      title: ''
      date: ''
      amount: ''

    valid: ->
      @state.title && @state.description

    handleChange: (e) ->
      name = e.target.name
      @setState "#{name}": e.target.value

    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { post: @state }, (data) =>
        @props.handleNewPost data
        @setState @getInitialState()
      , 'JSON'

    render: ->
      React.DOM.form
        className: 'form-inline'
        onSubmit: @handleSubmit

        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'string'
            className: 'form-control'
            placeholder: 'Title'
            name: 'title'
            value: @state.title
            onChange: @handleChange

        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'string'
            className: 'form-control'
            placeholder: 'Description'
            name: 'description'
            value: @state.description
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create post'
