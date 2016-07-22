<info-area>
  <div>
    <p if={message != ''}>「{ message }」を追加しました。</p>

    <script>
      // イベントコールバック内での this はこのタグではないので別名で保持
      var self = this

      self.message = ''

      sharedObservable.on('added', function(text) {
        self.message = text

        // イベントコールバック時には明示的にUpdateする必要がある
        self.update()
      })
    </script>
  </div>
</info-area>
