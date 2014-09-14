millitaryHour = (Hour, am_pm) ->
  $('#output').innterHTML = "<h1>called</h1>"


submit = ->
  startHour = $('#startHour').val()
  startType = $('#startType').val()
  if(startType == 'am' || startType == 'pm')
    startHour = millitaryHour(startHour, startType)

  endHour = $('#endHour').val()
  endType = $('#endType').val()
  if(endType == 'am' || endType == 'pm')
    endHour = millitaryHour(endHour, endType)

  startTime = $('#starMinute').val() / 60
  endTime = $('#startMinute').val() / 60

  startTime += startHour
  endTime += endHour

  $.post( url: "/create",
      data: {'timein': startTime, 'timeout' : endTime}
    )
  
  