fn statusBar(workspaces) {
    

}


fn nmMenu(){



}

fn clock(time){


}

fn nmApplet(){


}


fn cpuTemp(CPUtemps){


}


fn memoryStatus(memory){


}

fn workspace(workspaces){



}

fn cpuUtil(utilisationAmount){


}

fn drun(){




}


fn powerManager(){






}


fn calender(){



}

fn quickSettings(){


}

fn musicPlayer(){



}

fn wether(){



}





enter([
  poll("workspaces", #{
    initial: 1,
    interval: "2s",
    cmd: "hyprctl workspaces | grep \"space ID\" | wc -l"
  })
  poll("time", #{
    initial: "inital value",
    interval: "2s",
    cmd: "date +%H:%M:%S",
  }),
  poll("battery", #{
    initial: "50%",
    interval: "2s",
    cmd: "cat /sys/class/power_supply/BAT0/capacity",
  })
  poll("CPUtemps", #{
    initial: "40",
    interval: "2s",
    cmd "cat /sys/class/thermal/thermal_zone1/temp",
  })
  poll ("memory", #{
    initial: "5gi",
    interval: "2s",
    cmd: "free -h | awk '/Mem:/ {print $7}'",
  })

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
    label(#{ markup: "<big>Activate linux</big>\nGo to Settings to activate Linux", justify: "left",class: "activate"})
  ),
  defwindow(
    "bar",
    #{
        monitor: 0,
        focusable: "none",
        stacking: "fg",
        exclusive: "true"
        geometry: #{
            x: "0%",
            y: "5px",
            height: "10px",
            width: "100%",
            anchor: "top center",
        },
        
    }





  ),
]);