layers = iface.layerTreeView().selectedLayers()
for layer in layers:
    layer.renderer().symbol().setWidth(1)
    layer.triggerRepaint()
    iface.layerTreeView().refreshLayerSymbology(layer.id())