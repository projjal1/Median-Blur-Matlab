# Median-Blur-Matlab
Applying median blur on an image in Matlab.

Median Blur is a technique of image processing whereby we apply a median value of a sub-array on a given pixel, with the specific pixel at the centre of the cells.
So, here we specify the distance of farthest neighbour from the pixelated cell.

So, if we specify that the w value is 3,  then by formula 
<pre>2*w+1</pre>
a sub-array 7*7 will be considered for computation.


<h2>Drawbacks:</h2>
The higher the value of w will have negative consequences since it will mix a global range of pixels, similarly lower value of w will centralize the computation close to pixelated cell.  Thus, an intermediate range of 2 to 4 needs to be chosen for varying results.

<h2>Parameters to Function:</h2>
<ul>
  <li>img will be the path of image in string</li>
  <li>w will be the neighboring value of median blur</li>
</ul>

<h2>Sample Output</h2>
<table>
  <tr>
    <th>Input Image</th>
    <th>Output Image</th>
  </tr>
  <tr>
    <td><img src='https://github.com/projjal1/Median-Blur-Matlab/blob/master/vandy.png'/></td>
    <td><img src='https://github.com/projjal1/Median-Blur-Matlab/blob/master/output.png'/></td>
  </tr>
</table>
  
