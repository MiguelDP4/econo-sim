module WorldMapHelper
  def world_map_link
    if user_signed_in?
      link_to("World Map", world_map_path)
    end
  end
end
