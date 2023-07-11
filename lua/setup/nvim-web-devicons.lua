-- nvim-web-devicons
local nvim_web_devicons_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
if nvim_web_devicons_ok then
  nvim_web_devicons.setup({
    override = {
      m = {
        icon = "󰿈",
        color = "#eb7b3d",
        name = "MATLAB"
      },
      zip = {
        icon = "󰛫",
        color = "#ffffff",
        name = "Zip",
      },
      gz = {
        icon = "󰛫",
        color = "#ffffff",
        name = "GZip"
      },
      tar = {
        icon = "󰛫",
        color = "#ffffff",
        name = "Tar"
      },
      ["7z"] = {
        icon = "󰛫",
        color = "#ffffff",
        name = "7Zip"
      }
    }
  })
end

