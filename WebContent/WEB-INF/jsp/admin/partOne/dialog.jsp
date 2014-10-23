<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<div id="delete_partOne_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>确认删除所选 Part One？</h3>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" id="delete_partOne">删除</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>

<div id="delete_partOneQuestion_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>确认删除所选音频？</h3>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" id="delete_partOneQuestion">删除</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>

<div id="partOneQuestion_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 id="q_topic">编辑音频</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" id="q_id">

				<div class="form-group">
					<label>题目</label>
					<textarea rows="3" class="form-control" id="q_title" placeholder="题目" style="resize: none;"></textarea>
				</div>

				<label>范例</label>
				<textarea rows="5" class="form-control" id="q_content" placeholder="范例" style="resize: none;"></textarea>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" id="save_partOneQuestion">保存</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>