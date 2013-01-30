Lifesocket.FileView = Ember.View.extend                             
  tagName: 'input'                                     
  attributeBindings: ['type', 'id']                     
  type: 'file' 
                           
  change: (button_change_event) ->       
    view = this                  
    reader = new FileReader()                                         
    reader.onload = (file_reader_loaded_event) ->    
      view.set 'file', file_reader_loaded_event.target.result                
    reader.readAsBinaryString(button_change_event.target.files[0]) 