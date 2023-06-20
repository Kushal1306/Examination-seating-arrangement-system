<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
   body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        form {
            display: flex;
            flex-direction: column;
            width: 30%;
            margin:10% 30% 30% 30%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        label {
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"], select {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
</style>
<body>
    <form action="allotment.jsp" >
        <label for="fname">Enter Roll No</label>
        <input type="text" id="fname" name="t1">
        <select id="sname" name="t2">
<option value="N/A">Select Block No</option>
<option value="I">I</option>
<option value="II">II</option>
<option value="III">III</option>
<option value="Library">Library Block</option>


        </select>

        <select id="rno" name=t3>
            <option value=0>Select Room No</option>
<option value=101>101</option>
<option value=102>102</option>
<option value=103>103</option>
<option value=104>104</option>
<option value=105>105</option>
<option value=106>106</option>
<option value=107>107</option>
<option value=108>108</option>
<option value=109>109</option>
<option value=110>110</option>
<option value=111>111</option>
<option value=112>112</option>
<option value=113>113</option>
<option value=114>114</option>
<option value=115>115</option>
<option value=116>116</option>
<option value=117>117</option>
<option value=118>118</option>
<option value=119>119</option>
<option value=201>201</option>
<option value=202>202</option>
<option value=203>203</option>
<option value=204>204</option>
<option value=205>205</option>
<option value=206>206</option>
<option value=207>207</option>
<option value=208>208</option>
<option value=209>209</option>
<option value=210>210</option>
<option value=211>211</option>
<option value=212>212</option>
<option value=213>213</option>
<option value=214>214</option>
<option value=215>215</option>
<option value=216>216</option>
<option value=217>217</option>
<option value=218>218</option>
<option value=219>219</option>
<option value=301>301</option>
<option value=302>302</option>
<option value=303>303</option>
<option value=304>304</option>
<option value=305>305</option>
<option value=306>306</option>
<option value=307>307</option>
<option value=308>308</option>
<option value=309>309</option>
<option value=309>310</option>
<option value=311>311</option>
<option value=312>312</option>
<option value=313>313</option>
<option value=314>314</option>
<option value=315>315</option>
<option value=316>316</option>
<option value=317>317</option>
<option value=318>318</option>
<option value=319>319</option>
        </select>
<select id="sno" name=t4>
<option value=null>Select Seat No</option>
<option value=1>1</option>
<option value=2>2</option>
<option value=3>3</option>
<option value=4>4</option>
<option value=5>5</option>
<option value=6>6</option>
<option value=7>7</option>
<option value=8>8</option>
<option value=9>9</option>
<option value=10>10</option>
<option value=11>11</option>
<option value=12>12</option>
<option value=13>13</option>
<option value=14>14</option>
<option value=15>15</option>
<option value=16>16</option>
<option value=17>17</option>
<option value=18>18</option>
<option value=19>19</option>
<option value=20>20</option>
<option value=21>21</option>
<option value=22>22</option>
<option value=23>23</option>
<option value=24>24</option>


</select>

        <input type="submit" value="Assign Seat">

    </form>
    
</body>
</html>