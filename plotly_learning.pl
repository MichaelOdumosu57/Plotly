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
      
      
      
Line Charts in plotly.js

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