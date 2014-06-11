#================================================================================
# Skip Title if a save game is present (Original name, 2 points)
#================================================================================
#--------------------------------------------------------------------------------
# Written by Synthesize
# version 1.00
#--------------------------------------------------------------------------------
class Scene_Title
  #------------------------------------------------------------------------------
  # Aliases
  #------------------------------------------------------------------------------
  alias syn_main main
  #------------------------------------------------------------------------------
  # Main
  #------------------------------------------------------------------------------
  def main
    #----------------------------------------------------------------------------
    # Load Data
    #----------------------------------------------------------------------------
    $data_system        = load_data("Data/System.rxdata")
    $game_system = Game_System.new
    # Check for Saved Game
    @continue_enabled = false
    for i in 0..3
      if FileTest.exist?("Save#{i+1}.rxdata")
        @continue_enabled = true
        # Call Title Screen
        syn_main
      else
        $data_actors        = load_data("Data/Actors.rxdata")
        $data_classes       = load_data("Data/Classes.rxdata")
        $data_skills        = load_data("Data/Skills.rxdata")
        $data_items         = load_data("Data/Items.rxdata")
        $data_weapons       = load_data("Data/Weapons.rxdata")
        $data_armors        = load_data("Data/Armors.rxdata")
        $data_enemies       = load_data("Data/Enemies.rxdata")
        $data_troops        = load_data("Data/Troops.rxdata")
        $data_states        = load_data("Data/States.rxdata")
        $data_animations    = load_data("Data/Animations.rxdata")
        $data_tilesets      = load_data("Data/Tilesets.rxdata")
        $data_common_events = load_data("Data/CommonEvents.rxdata")
        # Call New Game
        command_new_game
      end
    end
  end
end
#--------------------------------------------------------------------------------
# Requested by XxZiggitxX
#--------------------------------------------------------------------------------
#================================================================================
# Skip Title if Save is Present
#================================================================================