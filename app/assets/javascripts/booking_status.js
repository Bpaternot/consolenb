$("#accept").click ->
    $.ajax({
      type: "POST",
      url: "/dashboard",
      data: { booking: { status: "approved" } },
      success:(data) ->
        alert data.id
        return false
      error:(data) ->
        return false
    })
