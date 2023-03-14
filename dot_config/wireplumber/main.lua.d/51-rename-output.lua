rule = {
  matches = {
    {
      { "node.name" , "equals", "alsa_output.pci-0000_00_1b.0.analog-stereo" },
    },
  },
  apply_properties = {
    ["node.description"] = "Speakers",
    ["node.nick"] = "Speakers",
  },
}
table.insert(alsa_monitor.rules,rule)
