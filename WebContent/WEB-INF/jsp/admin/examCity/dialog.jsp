<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<div id="delete_examCity_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>确认删除所选考点？</h3>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" id="delete_examCity">删除</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>

<div id="delete_examPoint_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>确认删除所选具体考点？</h3>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" id="delete_examPoint">删除</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>

<div id="examPoint_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 id="h_point">具体考点</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" id="q_id">

				<div class="form-group">
					<label>具体考点</label> <input id="examPointInput" class="form-control" placeholder="具体考点">
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" id="save_examPoint">保存</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>