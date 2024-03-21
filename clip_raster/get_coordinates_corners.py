#### function for clipping netcdf using shapefile ####
def get_coordinates_corners(shp):
	
    """
    Takes a geopandas object and converts it to a lat/ lon
    extent 

    Parameters
    -----------
    shp : GeoPandas GeoDataFrame
        A geodataframe containing the spatial boundary of interest
    world : boolean
        True if you want lat / long to represent sinusoidal (0-360 degrees)

    Returns
    -------
    Dictionary of lat and lon spatial bounds
    """

    lon_lat = {}
    # Get lat min, max
    aoi_lat = [float(shp.total_bounds[1]), float(shp.total_bounds[3])]
    aoi_lon = [float(shp.total_bounds[0]), float(shp.total_bounds[2])]

    # ~ if world:
        # ~ aoi_lon[0] = aoi_lon[0] + 360
        # ~ aoi_lon[1] = aoi_lon[1] + 360
    lon_lat["lon"] = aoi_lon
    lon_lat["lat"] = aoi_lat
    
    return lon_lat
####--------------------------------------------------------####