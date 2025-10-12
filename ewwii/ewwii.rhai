enter([
  defwindow(
    "activate linux",
    #{
      monitor: 0,
      focusable: "none",
      stacking: "overlay",
      wm_ignore: false,
      geometry: #{
        x: "50px",
        y: "20px",
        width: "50px",
        height: "30px",
        anchor: "bottom right",
      },
      reserve: #{ distance: "40px", side: "top" },
    },
    label(#{ markup: "<big>Activate linux</big>\ngo to settings to activate linux", justify: "left"})
    
    
    
    
    
  ),
]);