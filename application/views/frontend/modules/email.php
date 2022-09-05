<html>
<body>
	<div style="color: #000;">
		<p>Xin chào ,</p>
		<p>Bạn vừa có 1 liên hệ tại <strong>xaydungtrungquan.com.vn</strong>!</p>
		<p>Hãy liên lạc lại với khác hàng bạn nhé.</p>
		<div>
			<div style="font-size:18px;padding:5px;background-color:#4792e6;color:#fff"><strong>Thông tin Khách hàng</strong></div>
			<table style="width:100%;">
				<tbody>
					<tr>
						<td style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-bottom:1px solid #d7d7d7;padding:5px 10px">
							<table style="width:100%">
								<tbody>
									<tr>
										<td style="width:125px">Họ tên:</td>
										<td><?php echo $fullname ?></td>
									</tr>
									<tr>
										<td>Email:</td>
										<td><?php echo $email ?></td>
									</tr>
									<tr>
										<td>Điện thoại:</td>
										<td><?php echo $phone ?></td>
									</tr>
									<tr>
										<td>Thời gian:</td>
										<td><?php echo $created_at ?></td>
									</tr>
									<tr>
										<td>Nội dung:</td>
										<td>
											<?php echo $content ?>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p><strong>Trân trọng! </strong></p>
	</div>
</div>
</body>
</html>