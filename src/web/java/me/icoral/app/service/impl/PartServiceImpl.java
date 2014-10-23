package me.icoral.app.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import me.icoral.app.db.entity.PartOne;
import me.icoral.app.db.entity.PartOneQuestion;
import me.icoral.app.db.entity.PartThree;
import me.icoral.app.db.entity.PartTwo;
import me.icoral.app.db.entity.RecordHistory;
import me.icoral.app.service.IHistoryService;
import me.icoral.app.service.IPartOneQuesService;
import me.icoral.app.service.IPartOneService;
import me.icoral.app.service.IPartService;
import me.icoral.app.service.IPartThreeService;
import me.icoral.app.service.IPartTwoService;
import me.icoral.app.service.IRecordHistoryService;
import me.icoral.app.service.IUserService;
import me.icoral.base.util.BaseUtils;
import me.icoral.core.db.entity.AbstractPo;
import me.icoral.web.security.Passport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartServiceImpl implements IPartService {

	@Autowired
	IUserService userService;

	@Autowired
	IPartOneService oneService;

	@Autowired
	IPartOneQuesService oneQuesService;

	@Autowired
	IPartTwoService twoService;

	@Autowired
	IPartThreeService threeService;

	@Autowired
	IHistoryService historyService;

	@Autowired
	IRecordHistoryService recordHistoryService;

	@Override
	public String createPartSelf(JSONObject json, HttpServletRequest request) throws Exception {
		Passport passport = (Passport) AbstractPo.getPassport();
		Integer userid = passport.getId();// userid


		UUID uuid2 = UUID.randomUUID();
		String uuid = uuid2.toString();//BaseUtils.createUUID();// sn

		json.put("userid", userid);
		json.put("sn", uuid);
		json.put("partOneQuestion", 0);
		json.put("partThreeQuestion", 0);
		json.put("type", "self");
		historyService.createHistory(json);

		String partOne = json.getString("partOne");
		if (partOne != null && !partOne.equals("") && partOne.contains(",")) {
			String partOneString = json.getString("partOneString");
			String[] partOnes = partOne.split(",");
			String[] partOneStrings = partOneString.split(",");
			for (int i = 0; i < partOnes.length; i++) {
				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part1");
				obj.put("partId", partOnes[i]);
				obj.put("topic", partOneStrings[i]);
				obj.put("status", 0);
				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partOne_" + partOnes[i], rh.getId());
			}
		}

		String partTwo = json.getString("partTwo");
		if (partTwo != null && !partTwo.equals("") && partTwo.contains(",")) {
			String partTwoString = json.getString("partTwoString");
			String[] partTwos = partTwo.split(",");
			String[] partTwoStrings = partTwoString.split(",");
			for (int i = 0; i < partTwos.length; i++) {
				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part2");
				obj.put("partId", partTwos[i]);
				obj.put("topic", partTwoStrings[i]);
				obj.put("status", 0);
				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partTwo_" + partTwos[i], rh.getId());
			}
		}

		String partThree = json.getString("partThree");
		if (partThree != null && !partThree.equals("") && partThree.contains(",")) {
			String partThreeString = json.getString("partThreeString");
			String[] partThrees = partThree.split(",");
			String[] partThreeStrings = partThreeString.split(",");
			for (int i = 0; i < partThrees.length; i++) {
				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part3");
				obj.put("partId", partThrees[i]);
				obj.put("topic", partThreeStrings[i]);
				obj.put("status", 0);
				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partThree_" + partThrees[i], rh.getId());
			}
		}

		HttpSession session = request.getSession(true);
		session.setAttribute(uuid, json);

		return uuid;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public String createPartPoint(JSONObject json, HttpServletRequest request) throws Exception {
		Passport passport = (Passport) AbstractPo.getPassport();
		Integer userid = passport.getId();// userid

		String uuid = BaseUtils.createUUID();// sn

		json.put("userid", userid);
		json.put("sn", uuid);
		json.put("type", "point");

		json.put("partOne", "");
		json.put("partTwo", "");
		json.put("partThree", "");
		json.put("partOneQuestion", 0);
		json.put("partThreeQuestion", 0);

		String part = json.getString("part");
		Integer num = json.getInt("num");
		if (part.equals("part1")) {
			List list = oneService.listPartOne(new JSONObject());
			Collections.shuffle(list);
			if (num > list.size()) {
				num = list.size();
			}
			List retList = list.subList(0, num);
			String partOne = "";
			for (int i = 0; i < num; i++) {
				PartOne one = (PartOne) retList.get(i);
				partOne = partOne + one.getId() + ",";

				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part1");
				obj.put("partId", one.getId());
				obj.put("topic", one.getTitle());
				obj.put("status", 0);

				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partOne_" + one.getId(), rh.getId());
			}
			json.put("partOne", partOne);
		} else if (part.equals("part2")) {
			List list = twoService.listPartTwo(new JSONObject());
			Collections.shuffle(list);
			if (num > list.size()) {
				num = list.size();
			}
			List retList = list.subList(0, num);
			String partTwo = "";
			for (int i = 0; i < num; i++) {
				PartTwo two = (PartTwo) retList.get(i);
				partTwo = partTwo + two.getId() + ",";

				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part2");
				obj.put("partId", two.getId());
				obj.put("topic", two.getTopic() + "(Part2)");
				obj.put("status", 0);

				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partTwo_" + two.getId(), rh.getId());
			}
			json.put("partTwo", partTwo);
		} else if (part.equals("part3")) {
			List list = twoService.listPartTwo(new JSONObject());
			Collections.shuffle(list);
			if (num > list.size()) {
				num = list.size();
			}
			List retList = list.subList(0, num);
			String partTwo = "";
			for (int i = 0; i < num; i++) {
				PartTwo two = (PartTwo) retList.get(i);
				partTwo = partTwo + two.getId() + ",";

				JSONObject obj = new JSONObject();
				obj.put("userid", userid);
				obj.put("sn", uuid);
				obj.put("type", "part3");
				obj.put("partId", two.getId());
				obj.put("topic", two.getTopic() + "(Part3)");
				obj.put("status", 0);

				RecordHistory rh = recordHistoryService.createRecordHistory(obj);
				json.put("partThree_" + two.getId(), rh.getId());
			}
			json.put("partThree", partTwo);
		}

		historyService.createHistory(json);

		JSONObject user = new JSONObject();
		user.put("examTime", json.getInt("examTime"));
		user.put("examCity", json.getInt("examCity"));
		user.put("examPoint", json.getInt("examPoint"));
		userService.updateUser(userid, user);

		HttpSession session = request.getSession(true);
		session.setAttribute(uuid, json);

		return uuid;
	}

	@Override
	public String createPartExam(JSONObject json, HttpServletRequest request) throws Exception {
		// Passport passport = (Passport) AbstractPo.getPassport();
		// Integer userid = passport.getId();// userid
		//
		String uuid = BaseUtils.createUUID();// sn
		//
		// json.put("userid", userid);
		// json.put("sn", uuid);
		// json.put("type", "exam");
		//
		// Integer num = 3;
		//
		// List listOne = oneService.listPartOne(new JSONObject());
		// Collections.shuffle(listOne);
		// if (num > listOne.size()) {
		// num = listOne.size();
		// }
		// List retListOne = listOne.subList(0, num);
		// String partOne = "";
		// for (int i = 0; i < num; i++) {
		// PartOne one = (PartOne) retListOne.get(i);
		// partOne = partOne + one.getId() + ",";
		//
		// JSONObject obj = new JSONObject();
		// obj.put("userid", userid);
		// obj.put("sn", uuid);
		// obj.put("type", "part1");
		// obj.put("partId", one.getId());
		// obj.put("topic", one.getTitle());
		// obj.put("status", 0);
		// recordHistoryService.createRecordHistory(obj);
		// }
		// json.put("partOne", partOne);
		// json.put("partOneQuestion", 0);
		//
		// List listTwo = twoService.listPartTwo(new JSONObject());
		// Collections.shuffle(listTwo);
		//
		// PartTwo two = (PartTwo) listTwo.get(0);
		// String partTwo = two.getId() + ",";
		//
		// JSONObject obj = new JSONObject();
		// obj.put("userid", userid);
		// obj.put("sn", uuid);
		// obj.put("type", "part2");
		// obj.put("partId", two.getId());
		// obj.put("topic", two.getTopic() + "(Part2)");
		// obj.put("status", 0);
		// recordHistoryService.createRecordHistory(obj);
		// json.put("partTwo", partTwo);
		//
		// JSONObject query = new JSONObject();
		// JSONObject $criteria = new JSONObject();
		// $criteria.put("partTwoId", two.getId());
		// query.put("$criteria", $criteria);
		// List listThree = threeService.listPartThree(query);
		// Collections.shuffle(listThree);
		// num = 6;
		// if (num > listThree.size()) {
		// num = listThree.size();
		// }
		// List retList = list.subList(0, num);
		// String partTwo = "";
		// for (int i = 0; i < num; i++) {
		// PartTwo two = (PartTwo) retList.get(i);
		// partTwo = partTwo + two.getId() + ",";
		//
		// JSONObject obj = new JSONObject();
		// obj.put("userid", userid);
		// obj.put("sn", uuid);
		// obj.put("type", "part3");
		// obj.put("partId", two.getId());
		// obj.put("topic", two.getTopic() + "(Part3)");
		// obj.put("status", 0);
		// recordHistoryService.createRecordHistory(obj);
		// }
		// json.put("partThree", partTwo);
		// json.put("partThreeQuestion", 0);
		//
		// historyService.createHistory(json);
		//
		// JSONObject user = new JSONObject();
		// user.put("examTime", json.getInt("examTime"));
		// user.put("examCity", json.getInt("examCity"));
		// user.put("examPoint", json.getInt("examPoint"));
		// userService.updateUser(userid, user);

		HttpSession session = request.getSession(true);
		session.setAttribute(uuid, json);

		return uuid;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public JSONObject listPartSelf(String sn, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		JSONObject obj = (JSONObject) session.getAttribute(sn);

		String partOne = obj.getString("partOne");
		String partTwo = obj.getString("partTwo");
		String partThree = obj.getString("partThree");

		List partOneList = new ArrayList();
		List partTwoList = new ArrayList();
		List partThreeList = new ArrayList();

		if (!partOne.equals("") && partOne.contains(",")) {
			String[] partOneIds = partOne.split(",");
			for (int i = 0; i < partOneIds.length; i++) {
				Integer id = Integer.valueOf(partOneIds[i]);
				PartOne partone = oneService.findPartOne(id);
				JSONArray partOneQuestion = new JSONArray();

				JSONObject query = new JSONObject();
				JSONObject $criteria = new JSONObject();
				$criteria.put("partOneId", id);
				query.put("$criteria", $criteria);

				List list = oneQuesService.listPartOneQuestion(query);
				for (int j = 0; j < list.size(); j++) {
					PartOneQuestion poq = (PartOneQuestion) list.get(j);
					partOneQuestion.add(poq);
				}

				partone.setPartOneQuestion(partOneQuestion.toString());
				partOneList.add(partone);
			}
		}

		if (!partTwo.equals("") && partTwo.contains(",")) {
			String[] partTwoIds = partTwo.split(",");
			for (int i = 0; i < partTwoIds.length; i++) {
				Integer id = Integer.valueOf(partTwoIds[i]);
				PartTwo parttwo = twoService.findPartTwo(id);
				partTwoList.add(parttwo);
			}
		}

		if (!partThree.equals("") && partThree.contains(",")) {
			String[] partThreeIds = partThree.split(",");
			for (int i = 0; i < partThreeIds.length; i++) {
				Integer id = Integer.valueOf(partThreeIds[i]);
				PartTwo parttwo = twoService.findPartTwo(id);
				JSONArray partThreeQuestion = new JSONArray();

				JSONObject query = new JSONObject();
				JSONObject $criteria = new JSONObject();
				$criteria.put("partTwoId", id);
				query.put("$criteria", $criteria);

				List list = threeService.listPartThree(query);
				for (int j = 0; j < list.size(); j++) {
					PartThree pt = (PartThree) list.get(j);
					partThreeQuestion.add(pt);
				}

				parttwo.setPartThreeQuestion(partThreeQuestion.toString());
				partThreeList.add(parttwo);
			}
		}

		JSONObject retJson = new JSONObject();
		retJson.put("partOne", partOneList);
		retJson.put("partTwo", partTwoList);
		retJson.put("partThree", partThreeList);
		retJson.put("partIds", obj);

		return retJson;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public JSONObject listPartPoint(String sn, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		JSONObject obj = (JSONObject) session.getAttribute(sn);

		String partOne = obj.getString("partOne");
		String partTwo = obj.getString("partTwo");
		String partThree = obj.getString("partThree");

		Integer partOneFlag = obj.getInt("partOneQuestion");
		Integer partThreeFlag = obj.getInt("partThreeQuestion");

		List partOneList = new ArrayList();
		List partTwoList = new ArrayList();
		List partThreeList = new ArrayList();

		if (!partOne.equals("") && partOne.contains(",")) {
			String[] partOneIds = partOne.split(",");
			for (int i = 0; i < partOneIds.length; i++) {
				Integer id = Integer.valueOf(partOneIds[i]);
				PartOne partone = oneService.findPartOne(id);
				JSONArray partOneQuestion = new JSONArray();

				JSONObject query = new JSONObject();
				JSONObject $criteria = new JSONObject();
				$criteria.put("partOneId", id);
				query.put("$criteria", $criteria);

				List list = oneQuesService.listPartOneQuestion(query);
				for (int j = 0; j < list.size(); j++) {
					PartOneQuestion poq = (PartOneQuestion) list.get(j);
					partOneQuestion.add(poq);
				}

				partone.setPartOneQuestion(partOneQuestion.toString());
				partOneList.add(partone);
			}
		}

		JSONObject retJson = new JSONObject();
		retJson.put("partOne", partOneList);

		return retJson;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public JSONObject listPartExam(String sn, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		JSONObject obj = (JSONObject) session.getAttribute(sn);

		String partOne = obj.getString("partOne");
		String partTwo = obj.getString("partTwo");
		String partThree = obj.getString("partThree");

		Integer partOneFlag = obj.getInt("partOneQuestion");
		Integer partThreeFlag = obj.getInt("partThreeQuestion");

		List partOneList = new ArrayList();
		List partTwoList = new ArrayList();
		List partThreeList = new ArrayList();

		if (!partOne.equals("") && partOne.contains(",")) {
			String[] partOneIds = partOne.split(",");
			for (int i = 0; i < partOneIds.length; i++) {
				Integer id = Integer.valueOf(partOneIds[i]);
				PartOne partone = oneService.findPartOne(id);
				JSONArray partOneQuestion = new JSONArray();

				JSONObject query = new JSONObject();
				JSONObject $criteria = new JSONObject();
				$criteria.put("partOneId", id);
				query.put("$criteria", $criteria);

				List list = oneQuesService.listPartOneQuestion(query);
				for (int j = 0; j < list.size(); j++) {
					PartOneQuestion poq = (PartOneQuestion) list.get(j);
					partOneQuestion.add(poq);
				}

				partone.setPartOneQuestion(partOneQuestion.toString());
				partOneList.add(partone);
			}
		}

		JSONObject retJson = new JSONObject();
		retJson.put("partOne", partOneList);

		return retJson;
	}

}