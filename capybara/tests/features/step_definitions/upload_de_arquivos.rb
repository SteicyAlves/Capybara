Quando("eu faço um upload de arquivo") do
    visit('/outros/uploaddearquivos')

    attach_file('upload', '', make_visible: true)
  end