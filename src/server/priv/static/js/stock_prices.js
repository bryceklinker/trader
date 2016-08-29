(function(Phoenix) {
    var socket = new Phoenix.Socket('/socket');
    socket.connect();

    var channel = socket.channel('stock_prices:lobby', {});
    channel.join()
        .receive('ok', res => console.log('Resp: ' +  JSON.stringify(res)))
        .receive('error', res => console.log('Error: ' + JSON.stringify(res)));

    channel.on('quotes', res => {
        console.log('RES: ' + JSON.stringify(res));
    })
})(window.Phoenix);