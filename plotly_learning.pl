            .___                        .___                        .___                        .___
         |  [__]
         [__]  |                 |   [__]                      | [__]
        .___    .___
        .___    .___                .___    .___                .___    .___
      | [__]    [__]  |
      | [__]    [__]              | [__]    [__]                [__]    [__]
    .___            .___
    .___            .___        .___            .___        .___            .___
 |  [__]            [__]
 |  [__]            [__] |     [__]            [__]     |  [__]            [__]
.___                   .___
.___                   .___.___                   .___ .___                   .___
[__]                   [__]
[__]                   [__][__]                   [__] [__]                   [__]



Plotly


Key


section
            .___                        .___                        .___                        .___
         |  [__]                        [__]  |                 |   [__]                      | [__]
        .___    .___                .___    .___                .___    .___                .___    .___
      | [__]    [__]  |           | [__]    [__]              | [__]    [__]                [__]    [__]
    .___            .___        .___            .___        .___            .___        .___            .___
 |  [__]            [__]      |  [__]            [__] |     [__]            [__]     |  [__]            [__]
.___                   .___ .___                   .___.___                   .___ .___                   .___
[__]                   [__] [__]                   [__][__]                   [__] [__]                   [__]
            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
            .___
            [__]
        .___    .___
      | [__]    [__]  |
      
      
      
Charts in plotly.js

            .___                        .___                        .___                        .___
         |  [__]                        [__]  |                 |   [__]                      | [__]
        .___    .___                .___    .___                .___    .___                .___    .___
      | [__]    [__]  |           | [__]    [__]              | [__]    [__]                [__]    [__]
    .___            .___        .___            .___        .___            .___        .___            .___
 |  [__]            [__]      |  [__]            [__] |     [__]            [__]     |  [__]            [__]
.___                   .___ .___                   .___.___                   .___ .___                   .___
[__]                   [__] [__]                   [__][__]                   [__] [__]                   [__]
            .___
            
            
basically this is what we need it shows more examples than anything else

so you need a div that exists in
Plotly.newPlot('myDiv', data);
with  'myDiv' as the id for it to work

file : line charts plotly meaning block


basic bar chart

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 

var data = [
  {
    x: ['giraffes', 'orangutans', 'monkeys'],
    y: [20, 14, 23],
    type: 'bar'
  }
];

Plotly.newPlot('myDiv', data);


grouped baar chart

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]

var trace1 = {
  x: ['giraffes', 'orangutans', 'monkeys'],
  y: [20, 14, 23],
  name: 'SF Zoo',
  type: 'bar'
};

var trace2 = {
  x: ['giraffes', 'orangutans', 'monkeys'],
  y: [12, 18, 29],
  name: 'LA Zoo',
  type: 'bar'
};

var data = [trace1, trace2];

var layout = {barmode: 'group'};

Plotly.newPlot('myDiv', data, layout);


stacked bar chart


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 

var trace1 = {
  x: ['giraffes', 'orangutans', 'monkeys'],
  y: [20, 14, 23],
  name: 'SF Zoo',
  type: 'bar'
};

var trace2 = {
  x: ['giraffes', 'orangutans', 'monkeys'],
  y: [12, 18, 29],
  name: 'LA Zoo',
  type: 'bar'
};

var data = [trace1, trace2];

var layout = {barmode: 'stack'};

Plotly.newPlot('myDiv', data, layout);



bar chart with hover text


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var trace1 = {
  x: ['Liam', 'Sophie', 'Jacob', 'Mia', 'William', 'Olivia'],
  y: [8.0, 8.0, 12.0, 12.0, 13.0, 20.0],
  type: 'bar',
  text: ['4.17 below the mean', '4.17 below the mean', '0.17 below the mean', '0.17 below the mean', '0.83 above the mean', '7.83 above the mean'],
  marker: {
    color: 'rgb(142,124,195)'
  }
};

var data = [trace1];

var layout = {
  title: 'Number of Graphs Made this Week',
  font:{
    family: 'Raleway, sans-serif'
  },
  showlegend: false,
  xaxis: {
    tickangle: -45
  },
  yaxis: {
    zeroline: false,
    gridwidth: 2
  },
  bargap :0.05
};

Plotly.newPlot('myDiv5', data, layout);




bar chart with direct labels


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
var xValue = ['Product A', 'Product B', 'Product C'];

var yValue = [20, 14, 23];

var trace1 = {
  x: xValue,
  y: yValue,
  type: 'bar',
  text: yValue.map(String),
  textposition: 'auto',
  hoverinfo: 'none',
  marker: {
    color: 'rgb(158,202,225)',
    opacity: 0.6,
    line: {
      color: 'rgb(8,48,107)',
      width: 1.5
    }
  }
};

var data = [trace1];

var layout = {
  title: 'January 2013 Sales Report'
};

Plotly.newPlot('myDiv', data, layout);


grourped bar chart with direct labels


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
var xValue = ['Product A', 'Product B', 'Product C'];

var yValue = [20, 14, 23];
var yValue2 = [24, 16, 20];

var trace1 = {
  x: xValue,
  y: yValue,
  type: 'bar',
  text: yValue.map(String),
  textposition: 'auto',
  hoverinfo: 'none',
  opacity: 0.5,
  marker: {
    color: 'rgb(158,202,225)',
    line: {
      color: 'rgb(8,48,107)',
      width: 1.5
    }
  }
};

var trace2 = {
  x: xValue,
  y: yValue2,
  type: 'bar',
  text: yValue2.map(String),
  textposition: 'auto',
  hoverinfo: 'none',
  marker: {
    color: 'rgba(58,200,225,.5)',
    line: {
      color: 'rgb(8,48,107)',
      width: 1.5
    }
  }
};

var data = [trace1,trace2];

var layout = {
  title: 'January 2013 Sales Report'
};

Plotly.newPlot('myDiv', data, layout);



Bar Chart with Rotated Labels


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 var trace1 = {
  x: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
  y: [20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17],
  type: 'bar',
  name: 'Primary Product',
  marker: {
    color: 'rgb(49,130,189)',
    opacity: 0.7,
  }
};

var trace2 = {
  x: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
  y: [19, 14, 22, 14, 16, 19, 15, 14, 10, 12, 12, 16],
  type: 'bar',
  name: 'Secondary Product',
  marker: {
    color: 'rgb(204,204,204)',
    opacity: 0.5
  }
};

var data = [trace1, trace2];

var layout = {
  title: '2013 Sales Report',
  xaxis: {
    tickangle: -45
  },
  barmode: 'group'
};

Plotly.newPlot('myDiv', data, layout);




Customizing Individual Bar Colors


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 

var trace1 = {
  x: ['Feature A', 'Feature B', 'Feature C', 'Feature D', 'Feature E'],
  y: [20, 14, 23, 25, 22],
  marker:{
    color: ['rgba(204,204,204,1)', 'rgba(222,45,38,0.8)', 'rgba(204,204,204,1)', 'rgba(204,204,204,1)', 'rgba(204,204,204,1)']
  },
  type: 'bar'
};

var data = [trace1];

var layout = {
  title: 'Least Used Feature'
};

Plotly.newPlot('myDiv', data, layout);



Customizing Individual Bar Width


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 

var trace0 = {
  type: 'bar',
  x: [1, 2, 3, 5.5, 10],
  y: [10, 8, 6, 4, 2],
  width: [0.8, 0.8, 0.8, 3.5, 4]
}

var data = [trace0]

Plotly.plot('plotly-div', data);




Customizing Individual Bar Base


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 
 var data = [
  {
    type: 'bar',
    x: ['2016','2017','2018'],
    y: [500,600,700],
    base: [-500,-600,-700],
    marker: {
      color: 'red'
    },
    name: 'expenses'
  },
  {
    type: 'bar',
    x: ['2016','2017','2018'],
    y: [300,400,700],
    base: 0,
    marker: {
      color: 'blue'
    },
    name: 'revenue'
  }]

Plotly.newPlot('myDiv', data);


Colored and Styled Bar Chart


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 
 var trace1 = {
  x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
  y: [219, 146, 112, 127, 124, 180, 236, 207, 236, 263, 350, 430, 474, 526, 488, 537, 500, 439],
  name: 'Rest of world',
  marker: {color: 'rgb(55, 83, 109)'},
  type: 'bar'
};

var trace2 = {
  x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
  y: [16, 13, 10, 11, 28, 37, 43, 55, 56, 88, 105, 156, 270, 299, 340, 403, 549, 499],
  name: 'China',
  marker: {color: 'rgb(26, 118, 255)'},
  type: 'bar'
};

var data = [trace1, trace2];

var layout = {
  title: 'US Export of Plastic Scrap',
  xaxis: {tickfont: {
      size: 14,
      color: 'rgb(107, 107, 107)'
    }},
  yaxis: {
    title: 'USD (millions)',
    titlefont: {
      size: 16,
      color: 'rgb(107, 107, 107)'
    },
    tickfont: {
      size: 14,
      color: 'rgb(107, 107, 107)'
    }
  },
  legend: {
    x: 0,
    y: 1.0,
    bgcolor: 'rgba(255, 255, 255, 0)',
    bordercolor: 'rgba(255, 255, 255, 0)'
  },
  barmode: 'group',
  bargap: 0.15,
  bargroupgap: 0.1
};

Plotly.newPlot('myDiv', data, layout);



Waterfall Bar Chart


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 // Base

var xData = ['Product&lt;br&gt;Revenue', 'Services&lt;br&gt;Revenue',
  'Total&lt;br&gt;Revenue', 'Fixed&lt;br&gt;Costs',
  'Variable&lt;br&gt;Costs', 'Total&lt;br&gt;Costs', 'Total'
];

var yData = [400, 660, 660, 590, 400, 400, 340];

var textList = ['$430K', '$260K', '$690K', '$-120K', '$-200K', '$-320K', '$370K'];

//Base

var trace1 = {
  x: xData,
  y: [0, 430, 0, 570, 370, 370, 0],
  marker: {
    color: 'rgba(1,1,1,0.0)'
  },
  type: 'bar'
};

//Revenue

var trace2 = {
  x: xData,
  y: [430, 260, 690, 0, 0, 0, 0],
  type: 'bar',
  marker: {
    color: 'rgba(55,128,191,0.7)',
    line: {
      color: 'rgba(55,128,191,1.0)',
      width: 2
    }
  }
};

//Cost

var trace3 = {
  x: xData,
  y: [0, 0, 0, 120, 200, 320, 0],
  type: 'bar',
  marker: {
    color: 'rgba(219, 64, 82, 0.7)',
    line: {
      color: 'rgba(219, 64, 82, 1.0)',
      width: 2
    }
  }
};

//Profit

var trace4 = {
  x: xData,
  y: [0, 0, 0, 0, 0, 0, 370],
  type: 'bar',
  marker: {
    color: 'rgba(50,171, 96, 0.7)',
    line: {
      color: 'rgba(50,171,96,1.0)',
      width: 2
    }
  }
};

var data = [trace1, trace2, trace3, trace4];

var layout = {
  title: 'Annual Profit 2015',
  barmode: 'stack',
  paper_bgcolor: 'rgba(245,246,249,1)',
  plot_bgcolor: 'rgba(245,246,249,1)',
  width: 600,
  height: 600,
  showlegend: false,
  annotations: []
};

for ( var i = 0 ; i &lt; 7 ; i++ ) {
  var result = {
    x: xData[i],
    y: yData[i],
    text: textList[i],
    font: {
      family: 'Arial',
      size: 14,
      color: 'rgba(245,246,249,1)'
    },
    showarrow: false
  };
  layout.annotations.push(result);
};

Plotly.newPlot('myDiv', data, layout);


Bar Chart with Relative Barmode


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var trace1 = {
  x: [1, 2, 3, 4],
  y: [1, 4, 9, 16],
  name: 'Trace1',
  type: 'bar'
};
var trace2 = {
  x: [1, 2, 3, 4],
  y: [6, -8, -4.5, 8],
  name: 'Trace2',
  type: 'bar'
};
var trace3 = {
  x: [1, 2, 3, 4],
  y: [-15, -3, 4.5, -8],
  name: 'Trace3',
  type: 'bar'
 }

 var trace4 = {
  x: [1, 2, 3, 4],
  y: [-1, 3, -3, -4],
  name: 'Trace4',
  type: 'bar'
 }

var data = [trace1, trace2, trace3, trace4];
var layout = {
  xaxis: {title: 'X axis'},
  yaxis: {title: 'Y axis'},
  barmode: 'relative',
  title: 'Relative Barmode'
};

Plotly.newPlot('myDiv', data, layout);



Line charts
            .___                        .___                        .___                        .___
         |  [__]                        [__]  |                 |   [__]                      | [__]
        .___    .___                .___    .___                .___    .___                .___    .___
      | [__]    [__]  |           | [__]    [__]              | [__]    [__]                [__]    [__]
    .___            .___        .___            .___        .___            .___        .___            .___
 |  [__]            [__]      |  [__]            [__] |     [__]            [__]     |  [__]            [__]
.___                   .___ .___                   .___.___                   .___ .___                   .___
[__]                   [__] [__]                   [__][__]                   [__] [__]                   [__]
            .___
            
            
Basic Line Plot

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 
var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  type: 'scatter'
};

var trace2 = {
  x: [1, 2, 3, 4],
  y: [16, 5, 11, 9],
  type: 'scatter'
};

var data = [trace1, trace2];

Plotly.newPlot('myDiv', data);



Line and Scatter Plot

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'markers'
};

var trace2 = {
  x: [2, 3, 4, 5],
  y: [16, 5, 11, 9],
  mode: 'lines'
};

var trace3 = {
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines+markers'
};

var data = [ trace1, trace2, trace3 ];

var layout = {
  title:'Line and Scatter Plot'
};

Plotly.newPlot('myDiv', data, layout);



Adding Names to Line and Scatter Plot


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 
 var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'markers',
  name: 'Scatter'
};

var trace2 = {
  x: [2, 3, 4, 5],
  y: [16, 5, 11, 9],
  mode: 'lines',
  name: 'Lines'
};

var trace3 = {
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines+markers',
  name: 'Scatter + Lines'
};

var data = [ trace1, trace2, trace3 ];

var layout = {
  title:'Adding Names to Line and Scatter Plot'
};

Plotly.newPlot('myDiv', data, layout);




Line and Scatter Styling


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'markers',
  marker: {
    color: 'rgb(219, 64, 82)',
    size: 12
  }
};

var trace2 = {
  x: [2, 3, 4, 5],
  y: [16, 5, 11, 9],
  mode: 'lines',
  line: {
    color: 'rgb(55, 128, 191)',
    width: 3
  }
};

var trace3 = {
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines+markers',
  marker: {
    color: 'rgb(128, 0, 128)',
    size: 8
  },
  line: {
    color: 'rgb(128, 0, 128)',
    width: 1
  }
};

var data = [trace1, trace2, trace3];

var layout = {
  title: 'Line and Scatter Styling'
};

Plotly.newPlot('myDiv', data, layout);



Styling Line Plot


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]

trace1 = {
  type: 'scatter',
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'lines',
  name: 'Red',
  line: {
    color: 'rgb(219, 64, 82)',
    width: 3
  }
};

trace2 = {
  type: 'scatter',
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines',
  name: 'Blue',
  line: {
    color: 'rgb(55, 128, 191)',
    width: 1
  }
};

var layout = {
  width: 500,
  height: 500
};

var data = [trace1, trace2];

Plotly.newPlot('myDiv', data, layout);


Colored and Styled Scatter Plot


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]


var trace1 = {
  x: [52698, 43117],
  y: [53, 31],
  mode: 'markers',
  name: 'North America',
  text: ['United States', 'Canada'],
  marker: {
    color: 'rgb(164, 194, 244)',
    size: 12,
    line: {
      color: 'white',
      width: 0.5
    }
  },
  type: 'scatter'
};

var trace2 = {
  x: [39317, 37236, 35650, 30066, 29570, 27159, 23557, 21046, 18007],
  y: [33, 20, 13, 19, 27, 19, 49, 44, 38],
  mode: 'markers',
  name: 'Europe',
  text: ['Germany', 'Britain', 'France', 'Spain', 'Italy', 'Czech Rep.', 'Greece', 'Poland'],
  marker: {
    color: 'rgb(255, 217, 102)',
    size: 12
  },
  type: 'scatter'
};

var trace3 = {
  x: [42952, 37037, 33106, 17478, 9813, 5253, 4692, 3899],
  y: [23, 42, 54, 89, 14, 99, 93, 70],
  mode: 'markers',
  name: 'Asia/Pacific',
  text: ['Australia', 'Japan', 'South Korea', 'Malaysia', 'China', 'Indonesia', 'Philippines', 'India'],
  marker: {
    color: 'rgb(234, 153, 153)',
    size: 12
  },
  type: 'scatter'
};

var trace4 = {
  x: [19097, 18601, 15595, 13546, 12026, 7434, 5419],
  y: [43, 47, 56, 80, 86, 93, 80],
  mode: 'markers',
  name: 'Latin America',
  text: ['Chile', 'Argentina', 'Mexico', 'Venezuela', 'Venezuela', 'El Salvador', 'Bolivia'],
  marker: {
    color: 'rgb(142, 124, 195)',
    size: 12
  },
  type: 'scatter'
};

var data = [trace1, trace2, trace3, trace4];

var layout = {
  title: 'Quarter 1 Growth',
  xaxis: {
    title: 'GDP per Capita',
    showgrid: false,
    zeroline: false
  },
  yaxis: {
    title: 'Percent',
    showline: false
  }
};

Plotly.newPlot('myDiv', data, layout);



Line Shape Options for Interpolation

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var trace1 = {
  x: [1, 2, 3, 4, 5],
  y: [1, 3, 2, 3, 1],
  mode: 'lines+markers',
  name: 'linear',
  line: {shape: 'linear'},
  type: 'scatter'
};

var trace2 = {
  x: [1, 2, 3, 4, 5],
  y: [6, 8, 7, 8, 6],
  mode: 'lines+markers',
  name: 'spline',
  text: ['tweak line smoothness&lt;br&gt;with "smoothing" in line object', 'tweak line smoothness&lt;br&gt;with "smoothing" in line object', 'tweak line smoothness&lt;br&gt;with "smoothing" in line object', 'tweak line smoothness&lt;br&gt;with "smoothing" in line object', 'tweak line smoothness&lt;br&gt;with "smoothing" in line object', 'tweak line smoothness&lt;br&gt;with "smoothing" in line object'],
  line: {shape: 'spline'},
  type: 'scatter'
};

var trace3 = {
  x: [1, 2, 3, 4, 5],
  y: [11, 13, 12, 13, 11],
  mode: 'lines+markers',
  name: 'vhv',
  line: {shape: 'vhv'},
  type: 'scatter'
};

var trace4 = {
  x: [1, 2, 3, 4, 5],
  y: [16, 18, 17, 18, 16],
  mode: 'lines+markers',
  name: 'hvh',
  line: {shape: 'hvh'},
  type: 'scatter'
};

var trace5 = {
  x: [1, 2, 3, 4, 5],
  y: [21, 23, 22, 23, 21],
  mode: 'lines+markers',
  name: 'vh',
  line: {shape: 'vh'},
  type: 'scatter'
};

var trace6 = {
  x: [1, 2, 3, 4, 5],
  y: [26, 28, 27, 28, 26],
  mode: 'lines+markers',
  name: 'hv',
  line: {shape: 'hv'},
  type: 'scatter'
};

var data = [trace1, trace2, trace3, trace4, trace5, trace6];

var layout = {
  legend: {
    y: 0.5,
    traceorder: 'reversed',
    font: {size: 16},
    yref: 'paper'
  }};

Plotly.newPlot('myDiv6', data, layout);



Graph and Axes Titles


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'markers',
  name: 'Scatter'
};

var trace2 = {
  x: [2, 3, 4, 5],
  y: [16, 5, 11, 9],
  mode: 'lines',
  name: 'Lines'
};

var trace3 = {
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines+markers',
  name: 'Scatter and Lines'
};

var data = [trace1, trace2, trace3];

var layout = {
  title: 'Title of the Graph',
  xaxis: {
    title: 'x-axis title'
  },
  yaxis: {
    title: 'y-axis title'
  }
};

Plotly.newPlot('myDiv', data, layout);



Line Dash


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 
 var trace1 = {
  x: [1, 2, 3, 4, 5],
  y: [1, 3, 2, 3, 1],
  mode: 'lines',
  name: 'Solid',
  line: {
    dash: 'solid',
    width: 4
  }
};

var trace2 = {
  x: [1, 2, 3, 4, 5],
  y: [6, 8, 7, 8, 6],
  mode: 'lines',
  name: 'dashdot',
  line: {
    dash: 'dashdot',
    width: 4
  }
};

var trace3 = {
  x: [1, 2, 3, 4, 5],
  y: [11, 13, 12, 13, 11],
  mode: 'lines',
  name: 'Solid',
  line: {
    dash: 'solid',
    width: 4
  }
};

var trace4 = {
  x: [1, 2, 3, 4, 5],
  y: [16, 18, 17, 18, 16],
  mode: 'lines',
  name: 'dot',
  line: {
    dash: 'dot',
    width: 4
  }
};

var data = [trace1, trace2, trace3, trace4];

var layout = {
  title: 'Line Dash',
  xaxis: {
    range: [0.75, 5.25],
    autorange: false
  },
  yaxis: {
    range: [0, 18.5],
    autorange: false
  },
  legend: {
    y: 0.5,
    traceorder: 'reversed',
    font: {
      size: 16
    }
  }
};

Plotly.newPlot('myDiv7', data, layout);


Connect Gaps Between Data

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 


var trace1 = {
  x: [1, 2, 3, 4, 5, 6, 7, 8],
  y: [10, 15, null, 17, 14, 12, 10, null, 15],
  mode: 'lines+markers',
  connectgaps: true
};

var trace2 = {
  x: [1, 2, 3, 4, 5, 6, 7, 8],
  y: [16, null, 13, 10, 8, null, 11, 12],
  mode: 'lines',
  connectgaps: true
};

var data = [trace1, trace2];

var layout = {
  title: 'Connect the Gaps Between Data',
  showlegend: false
};

Plotly.newPlot('myDiv', data, layout);



Labelling Lines with Annotations

            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 var xData = [
  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013]
];

var yData = [
  [74, 82, 80, 74, 73, 72, 74, 70, 70, 66, 66, 69],
  [45, 42, 50, 46, 36, 36, 34, 35, 32, 31, 31, 28],
  [13, 14, 20, 24, 20, 24, 24, 40, 35, 41, 43, 50],
  [18, 21, 18, 21, 16, 14, 13, 18, 17, 16, 19, 23]
];

var colors = ['rgba(67,67,67,1)', 'rgba(115,115,115,1)', 'rgba(49,130,189, 1)',
  'rgba(189,189,189,1)'
];

var lineSize = [2, 2, 4, 2];

var labels = ['Television', 'Newspaper', 'Internet', 'Radio'];

var data = [];

for ( var i = 0 ; i < xData.length ; i++ ) {
  var result = {
    x: xData[i],
    y: yData[i],
    type: 'scatter',
    mode: 'lines',
    line: {
      color: colors[i],
      width: lineSize[i]
    }
  };
  var result2 = {
    x: [xData[i][0], xData[i][11]],
    y: [yData[i][0], yData[i][11]],
    type: 'scatter',
    mode: 'markers',
    marker: {
      color: colors[i],
      size: 12
    }
  };
  data.push(result, result2);
}

var layout = {
  showlegend: false,
  height: 600,
  width: 600,
  xaxis: {
    showline: true,
    showgrid: false,
    showticklabels: true,
    linecolor: 'rgb(204,204,204)',
    linewidth: 2,
    autotick: false,
    ticks: 'outside',
    tickcolor: 'rgb(204,204,204)',
    tickwidth: 2,
    ticklen: 5,
    tickfont: {
      family: 'Arial',
      size: 12,
      color: 'rgb(82, 82, 82)'
    }
  },
  yaxis: {
    showgrid: false,
    zeroline: false,
    showline: false,
    showticklabels: false
  },
  autosize: false,
  margin: {
    autoexpand: false,
    l: 100,
    r: 20,
    t: 100
  },
  annotations: [
    {
      xref: 'paper',
      yref: 'paper',
      x: 0.0,
      y: 1.05,
      xanchor: 'left',
      yanchor: 'bottom',
      text: 'Main Source for News',
      font:{
        family: 'Arial',
        size: 30,
        color: 'rgb(37,37,37)'
      },
      showarrow: false
    },
    {
      xref: 'paper',
      yref: 'paper',
      x: 0.5,
      y: -0.1,
      xanchor: 'center',
      yanchor: 'top',
      text: 'Source: Pew Research Center & Storytelling with data',
      showarrow: false,
      font: {
        family: 'Arial',
        size: 12,
        color: 'rgb(150,150,150)'
      }
    }
  ]
};

for( var i = 0 ; i < xData.length ; i++ ) {
  var result = {
    xref: 'paper',
    x: 0.05,
    y: yData[i][0],
    xanchor: 'right',
    yanchor: 'middle',
    text: labels[i] + ' ' + yData[i][0] +'%',
    showarrow: false,
    font: {
      family: 'Arial',
      size: 16,
      color: 'black'
    }
  };
  var result2 = {
    xref: 'paper',
    x: 0.95,
    y: yData[i][11],
    xanchor: 'left',
    yanchor: 'middle',
    text: yData[i][11] +'%',
    font: {
      family: 'Arial',
      size: 16,
      color: 'black'
    },
    showarrow: false
  };

  layout.annotations.push(result, result2);
}

Plotly.newPlot('myDiv9', data, layout);


pie charts

            .___                        .___                        .___                        .___
         |  [__]                        [__]  |                 |   [__]                      | [__]
        .___    .___                .___    .___                .___    .___                .___    .___
      | [__]    [__]  |           | [__]    [__]              | [__]    [__]                [__]    [__]
    .___            .___        .___            .___        .___            .___        .___            .___
 |  [__]            [__]      |  [__]            [__] |     [__]            [__]     |  [__]            [__]
.___                   .___ .___                   .___.___                   .___ .___                   .___
[__]                   [__] [__]                   [__][__]                   [__] [__]                   [__]



basic pie chart


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 

var data = [{
  values: [19, 26, 55],
  labels: ['Residential', 'Non-Residential', 'Utility'],
  type: 'pie'
}];

var layout = {
  height: 400,
  width: 500
};

Plotly.newPlot('myDiv', data, layout);



Pie Chart Subplots


            .___
            [__]
        .___    .___
      | [__]    [__]  |
    .___            .___
 |  [__]            [__]
 
 
 In order to create pie chart subplots, you need to use the domain attribute
 
 
 var allLabels = ['1st', '2nd', '3rd', '4th', '5th'];

var allValues = [
  [38, 27, 18, 10, 7],
  [28, 26, 21, 15, 10],
  [38, 19, 16, 14, 13],
  [31, 24, 19, 18, 8]
];

var ultimateColors = [
  ['rgb(56, 75, 126)', 'rgb(18, 36, 37)', 'rgb(34, 53, 101)', 'rgb(36, 55, 57)', 'rgb(6, 4, 4)'],
  ['rgb(177, 127, 38)', 'rgb(205, 152, 36)', 'rgb(99, 79, 37)', 'rgb(129, 180, 179)', 'rgb(124, 103, 37)'],
  ['rgb(33, 75, 99)', 'rgb(79, 129, 102)', 'rgb(151, 179, 100)', 'rgb(175, 49, 35)', 'rgb(36, 73, 147)'],
  ['rgb(146, 123, 21)', 'rgb(177, 180, 34)', 'rgb(206, 206, 40)', 'rgb(175, 51, 21)', 'rgb(35, 36, 21)']
];

var data = [{
  values: allValues[0],
  labels: allLabels,
  type: 'pie',
  name: 'Starry Night',
  marker: {
    colors: ultimateColors[0]
  },
  domain: {
    row: 0,
    column: 0
  },
  hoverinfo: 'label+percent+name',
  textinfo: 'none'
},{
  values: allValues[1],
  labels: allLabels,
  type: 'pie',
  name: 'Sunflowers',
  marker: {
    colors: ultimateColors[1]
  },
  domain: {
    row: 1,
    column: 0
  },
  hoverinfo: 'label+percent+name',
  textinfo: 'none'
},{
  values: allValues[2],
  labels: allLabels,
  type: 'pie',
  name: 'Irises',
  marker: {
    colors: ultimateColors[2]
  },
  domain: {
    row: 0,
    column: 1
  },
  hoverinfo: 'label+percent+name',
  textinfo: 'none'
},{
  values: allValues[3],
  labels: allLabels,
  type: 'pie',
  name: 'The Night Cafe',
  marker: {
    colors: ultimateColors[3]
  },
  domain: {
    x: [0.52,1],
    y: [0, 0.48]
  },
  hoverinfo: 'label+percent+name',
  textinfo: 'none'
}];

var layout = {
  height: 400,
  width: 500,
  grid: {rows: 2, columns: 2}
};

Plotly.newPlot('myDiv', data, layout);