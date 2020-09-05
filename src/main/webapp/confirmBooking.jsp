<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Booking</title>
</head>
<body>

</body>
</html><style>




.rateTable {width:70%; margin-bottom:30px;padding-left:170px;margin-top:100px;}
.rateTable th, .rateTable td {background-color:#eee; font-size:14px; color:#464242; border:2px solid #f16024; font-family: 'robotobold'; padding:15px 5px; text-align:center; vertical-align:middle; width:16%;}
.rateTable tr td:first-child {color:#484544; font-family: 'robotoregular'; width:20%; text-align:left; padding-left:20px;}
.rateTable tr th:first-child {text-align:left; padding-left:40px;}
.rateTable th {background-color:#f16024; color:#fff; padding:10px 5px;}
/*********** End Rate chart ************/
body { line-height: 1 }

p{
color:orange;
}
.rate-note {
    padding-left:170px;
    width:60%;
    float: center;
    margin-top: 20px !important;
}
</style>









<body>
<div>

<%@include file="customerHeader.html"%>
</div>

<div>
				  <table class="rateTable">
    <tbody><tr>
      <th>TYPE OF VEHICLE</th>
      <th>MAX WEIGHT CAPACITY</th>
      <th>0-5 km</th>
      <th>6-20 km</th>
      <th>21-50 km</th>
      <th>More than 50 Km</th>
    </tr>
			<tr>
         
         <td>Three wheeler</td>
		 <td>750</td>
		
			 
				 <td>350</td>
		 <td>25</td>
		 <td>20</td>
		 <td>15</td>
		</tr>
		     
		<tr>
         
         <td>TATA ACE</td>
		 <td>1000</td>
		
			 
				 <td>500</td>
		 <td>44</td>
		 <td>28</td>
		 <td>22</td>
		</tr>
		     
		<tr>
         
         <td>Mahindra Pick up</td>
		 <td>1000</td>
		
			 
				 <td>660</td>
		 <td>50</td>
		 <td>39</td>
		 <td>33</td>
		</tr>
		     
		<tr>
         
         <td>Tanker</td>
		 <td>2000</td>
		
			 
				 <td>935</td>
		 <td>50</td>
		 <td>39</td>
		 <td>33</td>
		</tr>
		     
		<tr>
         
         <td>Eicher 14''</td>
		 <td>3500</td>
		
			 
				 <td>1100</td>
		 <td>72</td>
		 <td>39</td>
		 <td>33</td>
		</tr>
		     
		<tr>
         
         <td>Garbage Truck</td>
		 <td>5000</td>
		
			 
				 <td>1650</td>
		 <td>83</td>
		 <td>55</td>
		 <td>39</td>
		</tr>
		     
		<tr>
         
         <td>Dump Truck</td>
		 <td>6000</td>
		
			 
				 <td>2000</td>
		 <td>88</td>
		 <td>55</td>
		 <td>44</td>
		</tr>
		     
		<tr>
         
         <td>Refrigerated Truck</td>
		 <td>1000</td>
		
			 
				 <td>600</td>
		 <td>49</td>
		 <td>39</td>
		 <td>22</td>
		</tr>
		     
		<tr>
         
         <td>32" Container Truck</td>
		 <td>7500</td>
		
			 
				 <td>5500</td>
		 <td>275</td>
		 <td>176</td>
		 <td>58</td>
		</tr>
		     
    
</tbody></table>
</div>
<div class="rate-note">
<p>Note : </p>

<p>(1) The above are Transportation Charges only and does not include Loading/Unloading or Labour Charges. Please contact our customer care executive in case you require Loading/Unloading or Labour Services along with Transportation, charges for which shall be in addition to Transportation Charges.</p>
<p>(2)  The above rates are exclusive of any Toll  Charges. Toll Charges will be extra as applicable.</p>
<p>(3) The above rates are subject to change in case of increase in diesel prices, changes in any taxes or additional taxes imposed by Govt. Of India or due to any other unforeseen conditions not in our control.</p>
</div>

</body>