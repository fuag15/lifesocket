# wrapper object for slate related methods / data external to json
window.lifesocket = window.lifesocket or {}
((util, $) ->
  util.month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
) window.lifesocket.util = window.lifesocket.util or {}, jQuery