//  Copyright 2009 Clever Coding LLC. All rights reserved.
//
// The MarkersForGlobeList class is mostly for the demo globe to demostrate creating markers although licensees are free to use
// creating markers although licensees are free to use the code as they see fit
//

#import "MarkersForGlobeList.h"


@implementation MarkersForGlobeList

@synthesize theList; //the list of markers

//When the object is intialized there will be a list of marker created
-(id) init
{
	theList = [[NSMutableArray alloc] init];
	[self generateTheList];
	
	return self;
}


//Function for adding a single marker to the 'list'
-(void)addGlobeMarker:(float)lat
		    theLongitude:(float)lon
            locationName:(NSString *)locName
{
	aTempMarker = [[GlobeMarker alloc] init];
	CLLocation  *tempLocation = [[CLLocation alloc] initWithLatitude:lat longitude:lon];
	
	aTempMarker.location = tempLocation;
	aTempMarker.locationDetails  = locName;  //The marker's location
	
	//add the marker to the main list
	[theList addObject:aTempMarker];
	
	//Release the objects here
	[aTempMarker release];
	aTempMarker = nil;
}

-(void)generateTheList{
	//[self addGlobeMarker:  53.344104  theLongitude:   -6.267494  locationName:@"Ireland"];
	//[self addGlobeMarker:  51.481068  theLongitude:   -0.110152  locationName:@"England"];
	
	//[self addGlobeMarker:  53.480712  theLongitude:   -2.234376  locationName:@"England"];
	[self addGlobeMarker:  52.229676  theLongitude:   21.012229  locationName:@"Poland"];
	[self addGlobeMarker:  52.523405  theLongitude:   13.411400  locationName:@"Germany"];
	[self addGlobeMarker:  35.689488  theLongitude:  139.691706  locationName:@"Japan"];
	[self addGlobeMarker: -37.814251  theLongitude:  144.963169  locationName:@"Austrila"];
	[self addGlobeMarker:  59.794739  theLongitude:   10.766602  locationName:@"Norway"];
	[self addGlobeMarker:  47.449885  theLongitude:   18.984375  locationName:@"Hungary"];

	[self addGlobeMarker:  37.370000  theLongitude:  121.920000  locationName:@"San Jose,CA"];
	[self addGlobeMarker:  35.230000  theLongitude:  120.650000  locationName:@"San Luis Obi,CA"];
	[self addGlobeMarker:  34.430000  theLongitude:  119.830000  locationName:@"Santa Barb,CA"];
	[self addGlobeMarker:  40.000000  theLongitude:  105.870000  locationName:@"Winter Park,CO"];
	[self addGlobeMarker:  41.730000  theLongitude:   72.650000  locationName:@"Hartford,CT"];
	[self addGlobeMarker:  39.130000  theLongitude:   75.470000  locationName:@"Dover,DE"];
	[self addGlobeMarker:  38.950000  theLongitude:   77.460000  locationName:@"Washington,DC"];
	[self addGlobeMarker:  28.470000  theLongitude:   80.550000  locationName:@"Cape Canaveral,FL"];

	[self addGlobeMarker:  32.730000  theLongitude:  117.170000  locationName:@"San Diego,CA"];
	[self addGlobeMarker:  32.570000  theLongitude:  116.980000  locationName:@"San Diego,CA"];
	[self addGlobeMarker:  32.820000  theLongitude:  116.970000  locationName:@"San Diego,CA"];
	[self addGlobeMarker:  37.620000  theLongitude:  122.380000  locationName:@"San Francisco,CA"];
	[self addGlobeMarker:  37.370000  theLongitude:  121.920000  locationName:@"San Jose,CA"];
	[self addGlobeMarker:  35.230000  theLongitude:  120.650000  locationName:@"San Luis Obi,CA"];
	[self addGlobeMarker:  34.430000  theLongitude:  119.830000  locationName:@"Santa Barb,CA"];
	[self addGlobeMarker:  40.000000  theLongitude:  105.870000  locationName:@"Winter Park,CO"];
	[self addGlobeMarker:  41.730000  theLongitude:   72.650000  locationName:@"Hartford,CT"];
	[self addGlobeMarker:  39.130000  theLongitude:   75.470000  locationName:@"Dover,DE"];
	[self addGlobeMarker:  38.950000  theLongitude:   77.460000  locationName:@"Washington,DC"];
	[self addGlobeMarker:  28.470000  theLongitude:   80.550000  locationName:@"Cape Canaveral,FL"];
	[self addGlobeMarker:  48.828083  theLongitude:    2.416992  locationName:@"Paris, France"];
	[self addGlobeMarker:  53.218752  theLongitude:   -6.240234  locationName:@"Dublin, Ireland"];
	[self addGlobeMarker:  53.086986  theLongitude:   -2.416992  locationName:@"Manchester, United Kingdom"];
	[self addGlobeMarker:  52.153265  theLongitude:   21.005859  locationName:@"Warsaw, Poland"];
	[self addGlobeMarker:  52.395269  theLongitude:   13.447266  locationName:@"Berlin, Germany"];
	[self addGlobeMarker:  59.794739  theLongitude:   10.766602  locationName:@"Oslo, Norway"];
	[self addGlobeMarker:  47.449885  theLongitude:   18.984375  locationName:@"Budapest, Slovakia"];
	[self addGlobeMarker:  41.860834  theLongitude:   12.436523  locationName:@"Rome, Italy"];
	[self addGlobeMarker:  40.304107  theLongitude:   -3.691406  locationName:@"Madrid, Spain"];

	[self addGlobeMarker:  55.763389  theLongitude:   -2.812500  locationName:@"Edinburgh, Scotland"];
	
	//srandom();
	
	//for(int x = 0; x < 4500; x++){
	//	int random1 = random()%170;
	//	int random2 = random()%360;
	//	[self addGlobeMarker:  -89 + random1  theLongitude:   -189 + random2  locationName:@"Edinburgh, Scotland"];
	//}
	
}

//Destructor
- (void)dealloc {    
	[theList     release];   // list of markers for the globe
	[aTempMarker release];   // temporary variable used while generating the main list array
    [super       dealloc];
}

@end
