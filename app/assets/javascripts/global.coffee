ready = ->
  modal_loading = """
                  <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-body">
                          <div class="spinner"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  """
  $('body').on 'hidden.bs.modal', '.modal', ->
    $(this).removeData('bs.modal')
    $(this).html(modal_loading)

$(document).on('turbolinks:load', ready)
$(document).bind 'turbolinks:load', ->
  Holder.run()
