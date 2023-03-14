
rule = {
  matches = {
    {
      { "node.name" , "equals", "alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo" },
    },
  },
  apply_properties = {
    ["node.description"] = "Headphones",
    ["node.nick"] = "Headphones",
  },
}
table.insert(alsa_monitor.rules,rule)
