class window.BackboneReactView extends Backbone.View
  tagName: 'span'
  initialize: (options) ->
    throw "You haven't defined component, silly developer" unless options.component
    @on 'show', ->
      React.renderComponent(options.component, @el)

  remove: ->
    React.unmountComponentAtNode(@el)

    super
